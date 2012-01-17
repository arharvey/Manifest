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
						cyclone();
	virtual				~cyclone();
	virtual	void		postConstructor();
	
	virtual	MStatus		compute( const MPlug& plug, MDataBlock& data );
	static  void*		creator();
	static  MStatus		initialize();
	
public:
	static	MObject		aCurve;
	static	MObject		aRandomSeed;
	static	MObject		aDensity;
	static	MObject		aRadius;
	static	MObject		aSpin;
	
	static	MObject		aPosition;
	static	MObject		aRotation;
	
	static	MTypeId		id;
};

#endif