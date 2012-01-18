// Cyclone Maya Plugin
//

#include <math.h>
#include <stdlib.h>

#include <maya/MPxNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnPlugin.h>
#include <maya/MFnNurbsCurve.h>
#include <maya/MString.h> 
#include <maya/MTypeId.h> 
#include <maya/MPlug.h> 
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MVectorArray.h>
#include <maya/MAngle.h>
#include <maya/MPoint.h>
#include <maya/MEulerRotation.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>
#include <maya/MRampAttribute.h>
#include <maya/MFloatArray.h>
#include <maya/MIntArray.h>
#include <maya/MGlobal.h>

#include "cyclone.h"
#include "ContinuousRandomVariable.h"

float
frand()
{
	return (float)rand() / RAND_MAX;
}


MObject cyclone::aCurve;
MObject cyclone::aRandomSeed;
MObject	cyclone::aStart;
MObject	cyclone::aEnd;
MObject cyclone::aDensity;
MObject cyclone::aDistribution;
MObject cyclone::aUp;
MObject cyclone::aDensityCurve;
MObject cyclone::aRadius;
MObject cyclone::aRadiusCurve;
MObject cyclone::aRedistributeUsingRadius;
MObject cyclone::aEnableSpin;
MObject cyclone::aSpin;
MObject cyclone::aSpinCurve;
MObject cyclone::aRadialSpinCurve;

MObject cyclone::aPosition;
MObject cyclone::aRotation;

MTypeId cyclone::id = 0x10001;

cyclone::cyclone()
{
}


cyclone::~cyclone()
{
}


void
cyclone::postConstructor()
{
	MPxNode::postConstructor();
	setExistWithoutInConnections(true);
	setExistWithoutOutConnections(true);
}

MStatus
cyclone::compute( const MPlug& plug, MDataBlock& data )
{
	if(plug == aPosition || plug == aRotation)
	{
		// Gather inputs
		MFnNurbsCurve fnCurve(data.inputValue(aCurve).asNurbsCurve());
		int randomSeed = data.inputValue(aRandomSeed).asInt();
		float density = data.inputValue(aDensity).asFloat();
		short distribution = data.inputValue(aDistribution).asShort();
		float start = data.inputValue(aStart).asFloat();
		float end = data.inputValue(aEnd).asFloat();
		MVector up = data.inputValue(aUp).asVector().normal();
		MRampAttribute densityCurve(thisMObject(), aDensityCurve);
		float maxRadius = data.inputValue(aRadius).asFloat();
		MRampAttribute radiusCurve(thisMObject(), aRadiusCurve);
		bool redistributeUsingRadius = data.inputValue(aRedistributeUsingRadius).asBool();
		bool enableSpin = data.inputValue(aEnableSpin).asBool();
		MAngle spin = data.inputValue(aSpin).asAngle().asRadians();
		MRampAttribute spinCurve(thisMObject(), aSpinCurve);
		MRampAttribute radialSpinCurve(thisMObject(), aRadialSpinCurve);
		
		// Number of particles to calculate
		unsigned N = (unsigned)density;
		//print "Cyclone density %d" % density;
		
		// Prepare output positions array
		MFnVectorArrayData fnPosition;
		MObject objPosition = fnPosition.create();
		
		MVectorArray position = fnPosition.array();
		position.setLength(N);
		
		// Prepare output rotations array
		MFnVectorArrayData fnRotation;
		MObject objRotation = fnRotation.create();
		
		MVectorArray rotation = fnRotation.array();
		rotation.setLength(N);
		
		srand(randomSeed);
		
		// Prepare our density's probability distribution function
		float numSpans = (float)fnCurve.numSpans();
		
		MIntArray densityCurveIndices, densityCurveInterps;
		MFloatArray densityCurvePositions, densityCurveValues;
		radiusCurve.getEntries(densityCurveIndices, densityCurvePositions, densityCurveValues, densityCurveInterps);
		
		unsigned int numDensityCurveEntries = radiusCurve.getNumEntries();

		PDFSampleArray densityPDF;
		densityPDF.resize(numDensityCurveEntries);
		for(unsigned int i = 0; i < numDensityCurveEntries; i++)
			densityPDF[i] = PDFSample(densityCurvePositions[i], densityCurveValues[i]);
		
		// There is no guarantee we will get the density curve entries in the right order
		sort(densityPDF.begin(), densityPDF.end(), PDFSample::sortByXPredicate);
		
		ContinuousRandomVariable densityRand(densityPDF);
		
		/*for(int i = 0; i < densityPDF.size(); i++)
			cout << i << ": " << densityPDF[i].x << " " << densityPDF[i].f << " " << densityPDF[i].F << endl;
		cout << endl;*/
		
		float curveLength = fnCurve.length();
		
		for(unsigned i = 0; i < N; i++)
		{
			float U = frand();
			float tNorm = redistributeUsingRadius ? densityRand.get(U) : U;

			float tt = start + tNorm*(end-start);
			float t = distribution == cyclone::kLength ? fnCurve.findParamFromLength(tt*curveLength) : tt*numSpans;
			
			MPoint pt;
			fnCurve.getPointAtParam(t, pt);
			MVector tangent = fnCurve.tangent(t).normal();
			MVector normal = (tangent ^ up).normal() ^ tangent; //fnCurve.normal(t).normal();
			
			// Position
			float radialScale = 1.0, spinScale = 1.0, radialSpinScale = 1.0;
			radiusCurve.getValueAtPosition(tNorm, radialScale);
			spinCurve.getValueAtPosition(tNorm, spinScale);
			
			float radiusNorm = radialScale*sqrt(frand()); // The sqrt helps produce a more uniform distribution
			radialSpinCurve.getValueAtPosition(radiusNorm, radialSpinScale);
			
			float angularOffset = frand()*2.0*M_PI;
			if(enableSpin)
				angularOffset += spin.asRadians()*spinScale*radialSpinScale;
			
			MQuaternion q(angularOffset, tangent);
			normal = normal.rotateBy(q);
			MVector binormal = tangent ^ normal;
			
			pt += normal*(maxRadius*radiusNorm);
			float p[] = {pt.x, pt.y, pt.z};
			position.set(p, i);
			
			float mInit[4][4] = {{tangent.x, tangent.y, tangent.z, 0},
								{normal.x, normal.y, normal.z, 0},
								{binormal.x, binormal.y, binormal.z, 0},
								{0, 0, 0, 1}};
						
			MMatrix m(mInit);
			MTransformationMatrix mTM(m);
			MEulerRotation eulerRot = mTM.rotation().asEulerRotation();
			
			// Angles are in radians
			float r[] = {eulerRot.x, eulerRot.y, eulerRot.z};
			rotation.set(r, i);
		}
		
		MDataHandle hPosition = data.outputValue(aPosition);
		hPosition.setMObject(objPosition);
		hPosition.setClean();
		
		MDataHandle hRotation = data.outputValue(aRotation);
		hRotation.setMObject(objRotation);
		hRotation.setClean();
		
		return MS::kSuccess;
	}
	else
		return MS::kUnknownParameter;
}


void*
cyclone::creator()
{
	return new cyclone();
}


MStatus
cyclone::initialize()
{
	MFnTypedAttribute typedAttr;
	MFnNumericAttribute numericAttr;
	MFnUnitAttribute unitAttr;
	MFnEnumAttribute enumAttr;
	
	aCurve = typedAttr.create("curve", "cur", MFnData::kNurbsCurve);
	typedAttr.setWritable(true);
	typedAttr.setReadable(false);
	typedAttr.setDisconnectBehavior(MFnAttribute::kReset);
	addAttribute(aCurve);
	
	
	aRandomSeed = numericAttr.create("randomSeed", "rs", MFnNumericData::kInt, 17.0);
	numericAttr.setMin(1.0);
	addAttribute(aRandomSeed);
	
	aDensity = numericAttr.create("density", "den", MFnNumericData::kFloat, 10.0);
	numericAttr.setMin(0.0);
	numericAttr.setSoftMax(500);
	addAttribute(aDensity);
	
	aDistribution = enumAttr.create("distribution", "dist", cyclone::kParameter);
	enumAttr.addField("parameter", cyclone::kParameter);
	enumAttr.addField("length", cyclone::kLength);
	addAttribute(aDistribution);
	
	aStart = numericAttr.create("start", "st", MFnNumericData::kFloat, 0.0);
	numericAttr.setMin(0.0);
	numericAttr.setMax(1.0);
	addAttribute(aStart);
	
	aEnd = numericAttr.create("end", "en", MFnNumericData::kFloat, 1.0);
	numericAttr.setMin(0.0);
	numericAttr.setMax(1.0);
	addAttribute(aEnd);
	
	aUp = numericAttr.createPoint("up", "u");
	numericAttr.setDefault(0.0, 1.0, 0.0);
	addAttribute(aUp);
	
	aDensityCurve = MRampAttribute::createCurveRamp("densityCurve","dc");
	addAttribute(aDensityCurve);
	
	aRadius = numericAttr.create("radius", "r", MFnNumericData::kFloat, 5.0);
	numericAttr.setMin(0.0);
	addAttribute(aRadius);
	
	aRadiusCurve = MRampAttribute::createCurveRamp("radiusCurve","rc");
	addAttribute(aRadiusCurve);
	
	aRedistributeUsingRadius = numericAttr.create("redistributeUsingRadius", "rbr", MFnNumericData::kBoolean, true);
	addAttribute(aRedistributeUsingRadius);
	
	aEnableSpin = numericAttr.create("enableSpin", "esp", MFnNumericData::kBoolean, true);
	addAttribute(aEnableSpin);
	
	aSpin = unitAttr.create("spin", "sp", MFnUnitAttribute::kAngle, 0.0);
	addAttribute(aSpin);
	
	aSpinCurve = MRampAttribute::createCurveRamp("spinCurve","sc");
	addAttribute(aSpinCurve);

	aRadialSpinCurve = MRampAttribute::createCurveRamp("radialSpinCurve","rsc");
	addAttribute(aRadialSpinCurve);
	
	aPosition = typedAttr.create("positions", "pos", MFnData::kVectorArray);
	typedAttr.setWritable(false);
	typedAttr.setReadable(true);
	typedAttr.setDisconnectBehavior(MFnAttribute::kReset);
	//typedAttr.setDefault(MFnVectorArrayData().create());
	addAttribute(aPosition);
	
	aRotation = typedAttr.create("rotation", "rot", MFnData::kVectorArray);
	typedAttr.setWritable(false);
	typedAttr.setReadable(true);
	typedAttr.setDisconnectBehavior(MFnAttribute::kReset);
	//typedAttr.setDefault(MFnVectorArrayData().create());
	addAttribute(aRotation);
	
	attributeAffects(aCurve, aPosition);
	attributeAffects(aRandomSeed, aPosition);
	attributeAffects(aDensity, aPosition);
	attributeAffects(aDistribution, aPosition);
	attributeAffects(aStart, aPosition);
	attributeAffects(aEnd, aPosition);
	attributeAffects(aUp, aPosition);
	attributeAffects(aDensityCurve, aPosition);
	attributeAffects(aRadius, aPosition);
	attributeAffects(aRadiusCurve, aPosition);
	attributeAffects(aRedistributeUsingRadius, aPosition);
	attributeAffects(aEnableSpin, aPosition);
	attributeAffects(aSpin, aPosition);
	attributeAffects(aSpinCurve, aPosition);
	attributeAffects(aRadialSpinCurve, aPosition);
	
	attributeAffects(aCurve, aRotation);
	attributeAffects(aRandomSeed, aRotation);
	attributeAffects(aDensity, aRotation);
	attributeAffects(aDistribution, aRotation);
	attributeAffects(aStart, aRotation);
	attributeAffects(aEnd, aRotation);
	attributeAffects(aUp, aRotation);
	attributeAffects(aDensityCurve, aRotation);
	attributeAffects(aRadiusCurve, aRotation);
	attributeAffects(aRedistributeUsingRadius, aRotation);
	attributeAffects(aEnableSpin, aRotation);
	attributeAffects(aSpin, aRotation);
	attributeAffects(aSpinCurve, aRotation);
	attributeAffects(aRadialSpinCurve, aRotation);
	
	return MS::kSuccess;
}

MStatus
initializePlugin( MObject obj )
{
	MStatus   status;
	MFnPlugin plugin( obj, PLUGIN_COMPANY, "3.0", "Any");
	
	status = plugin.registerNode( "cyclone", cyclone::id, cyclone::creator,
								 cyclone::initialize);
	if (!status) {
		status.perror("Unable to register cyclone node");
		return status;
	}
	
	return status;
}

MStatus
uninitializePlugin( MObject obj)
{
	MStatus   status;
	MFnPlugin plugin( obj );
	
	status = plugin.deregisterNode( cyclone::id );
	if (!status) {
		status.perror("Unable to deregister cyclone node");
		return status;
	}
	
	return status;
}

