// Cyclone Maya Plugin
//

#include <math.h>
#include <stdlib.h>

#include <maya/MPxNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnUnitAttribute.h>
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

#include "cyclone.h"

float
frand()
{
	return (float)rand() / RAND_MAX;
}


MObject cyclone::aCurve;
MObject cyclone::aRandomSeed;
MObject cyclone::aDensity;
MObject cyclone::aRadius;
MObject cyclone::aSpin;

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
		float radius = data.inputValue(aRadius).asFloat();
		MAngle spin = data.inputValue(aSpin).asAngle().asRadians();
		
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
		
		for(unsigned i = 0; i < N; i++)
		{
			float t = frand()*(float)fnCurve.numSpans();
			
			MPoint pt;
			fnCurve.getPointAtParam(t, pt);
			MVector tangent = fnCurve.tangent(t).normal();
			MVector normal = fnCurve.normal(t).normal();
			
			// Position
			MQuaternion q(frand()*2.0*M_PI + spin.asRadians(), tangent);
			normal = normal.rotateBy(q);
			MVector binormal = tangent ^ normal;
		
			pt += normal*(radius*frand());
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
	addAttribute(aDensity);
	
	aRadius = numericAttr.create("radius", "r", MFnNumericData::kFloat, 5.0);
	numericAttr.setMin(0.0);
	addAttribute(aRadius);
	
	aSpin = unitAttr.create("spin", "sp", MFnUnitAttribute::kAngle, 0.0);
	addAttribute(aSpin);
	
	
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
	attributeAffects(aRadius, aPosition);
	attributeAffects(aSpin, aPosition);
	
	attributeAffects(aCurve, aRotation);
	attributeAffects(aRandomSeed, aRotation);
	attributeAffects(aDensity, aRotation);
	attributeAffects(aSpin, aRotation);
	
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

