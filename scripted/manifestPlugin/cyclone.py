# manifest.py
#

import sys
import math
import random
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import pymel.core as PyMEL  

kNodeName = "cyclone"
kNodeId = OpenMaya.MTypeId(0x10001) # Must be < 0x80000

class cyclone(OpenMayaMPx.MPxNode):
	aCurve = OpenMaya.MObject()
	aRandomSeed = OpenMaya.MObject()
	aDensity = OpenMaya.MObject()
	aRadius = OpenMaya.MObject()
	aPositions = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	
	def compute(self, plug, data):
		if plug == cyclone.aPositions:
			# Gather inputs
			fnCurve = OpenMaya.MFnNurbsCurve(data.inputValue(cyclone.aCurve).asNurbsCurve());
			randomSeed = data.inputValue(cyclone.aRandomSeed).asInt()
			density = data.inputValue(cyclone.aDensity).asFloat()
			radius = data.inputValue(cyclone.aRadius).asFloat()
			
			# Number of particles to calculate
			N = int(density)
			
			# Build output positions array
			hPositions = data.outputValue(cyclone.aPositions)
			fnPositions = OpenMaya.MFnVectorArrayData();
			objPositions = fnPositions.create()
			
			positions = fnPositions.array()
			positions.setLength(N)
			
			oldRandomState = random.getstate()
			random.seed(randomSeed)
			
			tMax = fnCurve.numSpans()
			
			for i in range(0,N):
				t = random.random()*float(tMax)
				
				pt = OpenMaya.MPoint()
				fnCurve.getPointAtParam(t, pt)
				tangent = fnCurve.tangent(t).normal()
				normal = fnCurve.normal(t).normal()
				
				q = OpenMaya.MQuaternion(random.random()*2.0*math.pi, tangent)
			
				pt += normal.rotateBy(q)*(radius*random.random())
				
				positions.set(OpenMaya.MVector(pt.x, pt.y, pt.z), i)
			
			hPositions.setMObject(objPositions)
			hPositions.setClean()
			
			random.setstate(oldRandomState)
		else:
			return OpenMaya.kUnknownParameter

def nodeCreator():
	return OpenMayaMPx.asMPxPtr( cyclone() )	

def nodeInitializer():
	typedAttr = OpenMaya.MFnTypedAttribute()
	numericAttr = OpenMaya.MFnNumericAttribute()
	
	cyclone.aCurve = typedAttr.create("curve", "cur", OpenMaya.MFnData.kNurbsCurve)
	typedAttr.setWritable(True)
	typedAttr.setReadable(False)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	cyclone.addAttribute(cyclone.aCurve)
	
	cyclone.aRandomSeed = numericAttr.create("randomSeed", "rs", OpenMaya.MFnNumericData.kInt, 17.0)
	numericAttr.setMin(1.0)
	cyclone.addAttribute(cyclone.aRandomSeed)
	
	cyclone.aDensity = numericAttr.create("density", "den", OpenMaya.MFnNumericData.kFloat, 10.0)
	numericAttr.setMin(0.0)
	cyclone.addAttribute(cyclone.aDensity)
	
	cyclone.aRadius = numericAttr.create("radius", "r", OpenMaya.MFnNumericData.kFloat, 5.0)
	numericAttr.setMin(0.0)
	cyclone.addAttribute(cyclone.aRadius)
	
	cyclone.aPositions = typedAttr.create("positions", "pos", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(False)
	typedAttr.setReadable(True)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	cyclone.addAttribute(cyclone.aPositions)
	
	cyclone.attributeAffects(cyclone.aCurve, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aRandomSeed, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aDensity, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aRadius, cyclone.aPositions)

