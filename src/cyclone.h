// Cyclone Maya Plugin
//

#ifndef _CYCLONE_H
#define _CYCLONE_H

#include <math.h>

#include <maya/MPxNode.h>
#include <maya/MFnPlugin.h>
#include <maya/MTypeId.h> 
#include <maya/MDataBlock.h>
#include <maya/MPlug.h>

// --------------------------------------------------------------------------
// Cyclone node

class cyclone : public MPxNode
{
public:
	enum Distribution {kParameter = 0, kLength = 1};
	
						cyclone();
	virtual				~cyclone();
	virtual	void		postConstructor();
	
	virtual	MStatus		compute( const MPlug& plug, MDataBlock& data );
	static  void*		creator();
	static  MStatus		initialize();
	
public:
	static	MObject		aCurve;
	static	MObject		aRandomSeed;
	static	MObject		aStart;
	static	MObject		aEnd;
	static	MObject		aUp;
	static	MObject		aDensity;
	static	MObject		aDistribution;
	static	MObject		aDensityCurve;
	static	MObject		aRadius;
	static	MObject		aRadiusCurve;
	static	MObject		aRedistributeUsingRadius;
	static	MObject		aEnableSpin;
	static	MObject		aSpin;
	static	MObject		aSpinCurve;
	static	MObject		aRadialSpinCurve;
	
	static	MObject		aPosition;
	static	MObject		aRotation;
	
	static	MTypeId		id;
};


#endif