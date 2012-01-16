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
	aSpin = OpenMaya.MObject()
	
	
	aPositions = OpenMaya.MObject()
	aRotation = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	
	def postConstructor(self):
		OpenMayaMPx.MPxNode.postConstructor(self)
		self.setExistWithoutInConnections(True)
		self.setExistWithoutOutConnections(True)
	
	def compute(self, plug, data):
		#print "Computing %s" % plug.name()
		if plug == cyclone.aPositions or plug == cyclone.aRotation:
			# Gather inputs
			fnCurve = OpenMaya.MFnNurbsCurve(data.inputValue(cyclone.aCurve).asNurbsCurve());
			randomSeed = data.inputValue(cyclone.aRandomSeed).asInt()
			density = data.inputValue(cyclone.aDensity).asFloat()
			radius = data.inputValue(cyclone.aRadius).asFloat()
			spin = data.inputValue(cyclone.aSpin).asAngle().asRadians()
			
			# Number of particles to calculate
			N = int(density)
			#print "Cyclone density %d" % density
			
			# Prepare output positions array
			hPositions = data.outputValue(cyclone.aPositions)
			fnPositions = OpenMaya.MFnVectorArrayData();
			objPositions = fnPositions.create()
			
			positions = fnPositions.array()
			positions.setLength(N)
			
			# Prepare output rotations array
			hRotation = data.outputValue(cyclone.aRotation)
			fnRotation = OpenMaya.MFnVectorArrayData();
			objRotation = fnRotation.create()
			
			rotation = fnRotation.array()
			rotation.setLength(N)
			
			oldRandomState = random.getstate()
			random.seed(randomSeed)
			
			tMax = fnCurve.numSpans()
			
			for i in range(0,N):
				t = random.random()*float(tMax)
				
				pt = OpenMaya.MPoint()
				fnCurve.getPointAtParam(t, pt)
				tangent = fnCurve.tangent(t).normal()
				normal = fnCurve.normal(t).normal()
				
				# Position
				
				q = OpenMaya.MQuaternion(random.random()*2.0*math.pi + spin, tangent)
				normal = normal.rotateBy(q)
				binormal = tangent ^ normal
			
				pt += normal*(radius*random.random())
				positions.set(OpenMaya.MVector(pt.x, pt.y, pt.z), i)
				
				# Rotation
				# See Ryan Trowbridge's blog whic deriving euler rotations
				# using Maya's Python binding. It's not entirely obvious:
				# http://www.rtrowbridge.com/blog/2009/02/python-api-mtransformationmatrixgetrotation-bug/
				
				mInit = [	tangent.x, tangent.y, tangent.z, 0, \
							normal.x, normal.y, normal.z, 0, \
							binormal.x, binormal.y, binormal.z, 0, \
							0, 0, 0, 1]
							
				mRot = OpenMaya.MMatrix()
				OpenMaya.MScriptUtil.createMatrixFromList(mInit, mRot)
				
				mTM = OpenMaya.MTransformationMatrix(mRot)
				eulerRot = mTM.rotation().asEulerRotation()
				
				# Angles are in radians
				rotation.set(OpenMaya.MVector(eulerRot.x, eulerRot.y, eulerRot.z), i)
			
			hPositions.setMObject(objPositions)
			hPositions.setClean()
			
			hRotation.setMObject(objRotation)
			hRotation.setClean()
			
			random.setstate(oldRandomState)
		else:
			return OpenMaya.kUnknownParameter

def nodeCreator():
	return OpenMayaMPx.asMPxPtr( cyclone() )	

def nodeInitializer():
	typedAttr = OpenMaya.MFnTypedAttribute()
	numericAttr = OpenMaya.MFnNumericAttribute()
	unitAttr = OpenMaya.MFnUnitAttribute()
	
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
	
	cyclone.aSpin = unitAttr.create("spin", "sp", OpenMaya.MFnUnitAttribute.kAngle, 0.0)
	cyclone.addAttribute(cyclone.aSpin)
	
	
	cyclone.aPositions = typedAttr.create("positions", "pos", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(False)
	typedAttr.setReadable(True)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	cyclone.addAttribute(cyclone.aPositions)
	
	cyclone.aRotation = typedAttr.create("rotation", "rot", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(False)
	typedAttr.setReadable(True)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	cyclone.addAttribute(cyclone.aRotation)
	
	cyclone.attributeAffects(cyclone.aCurve, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aRandomSeed, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aDensity, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aRadius, cyclone.aPositions)
	cyclone.attributeAffects(cyclone.aSpin, cyclone.aPositions)
	
	cyclone.attributeAffects(cyclone.aCurve, cyclone.aRotation)
	cyclone.attributeAffects(cyclone.aRandomSeed, cyclone.aRotation)
	cyclone.attributeAffects(cyclone.aDensity, cyclone.aRotation)
	cyclone.attributeAffects(cyclone.aSpin, cyclone.aRotation)

