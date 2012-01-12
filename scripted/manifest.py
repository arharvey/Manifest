# manifest.py
#

import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

kManifestHubNodeName = "manifestHub"
kManifestHubNodeId = OpenMaya.MTypeId(0x10000) # Must be < 0x80000

class manifestHub(OpenMayaMPx.MPxNode):
	aStamp = OpenMaya.MObject()
	aPositions = OpenMaya.MObject()
	aSpawned = OpenMaya.MObject()
	aTranslate = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
		
	def compute(self, plug, data):
		if plug == manifestHub.aTranslate:
			
			outputTranslate = data.outputValue(plug)
			
			try:
				positionsArray = OpenMaya.MFnVectorArrayData( data.inputValue(manifestHub.aPositions).data() )
			except:
				# sys.stderr.write( "manifestHub: No positions found" )
				pass
			else:	
				index = plug.logicalIndex()
				if index < positionsArray.length():
					pos = positionsArray.array()[index] # MFNVectorArrayData -> MVectorArray -> MVector
					outputTranslate.set3Float(pos.x, pos.y, pos.z)	
				
			outputTranslate.setClean()
		else:
			return OpenMaya.kUnknownParameter
		
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( manifestHub() )
	
def nodeInitializer():
	msgAttr = OpenMaya.MFnMessageAttribute()
	typedAttr = OpenMaya.MFnTypedAttribute()
	numericAttr = OpenMaya.MFnNumericAttribute()
	
	manifestHub.aStamp = msgAttr.create("stamp", "st")
	msgAttr.setWritable(True)
	msgAttr.setReadable(False)
	msgAttr.setArray(True)
	msgAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kDelete)
	manifestHub.addAttribute(manifestHub.aStamp)
	
	manifestHub.aSpawned = msgAttr.create("spawned", "sp")
	msgAttr.setWritable(False)
	msgAttr.setReadable(True)
	msgAttr.setArray(True)
	msgAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kDelete)
	manifestHub.addAttribute(manifestHub.aSpawned)
	
	manifestHub.aPositions = typedAttr.create("positions", "pos", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(True)
	typedAttr.setReadable(False)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	manifestHub.addAttribute(manifestHub.aPositions)
	
	manifestHub.aTranslate = numericAttr.createPoint("translate", "t")
	numericAttr.setWritable(False)
	numericAttr.setArray(True)
	numericAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	manifestHub.addAttribute(manifestHub.aTranslate)
	
	manifestHub.attributeAffects(manifestHub.aPositions, manifestHub.aTranslate)
	
	
# Plug-in initialization and uninitialization
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kManifestHubNodeName, kManifestHubNodeId, nodeCreator, nodeInitializer)
	except:
		sys.stderr.write( "Failed to register node: %s" % kManifestHubNodeName)
		raise
		
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( kManifestHubNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kManifestHubNodeId)
		raise
