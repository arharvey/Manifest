# manifest.py
#

import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

kManifestHubNodeName = "manifestHub"
kManifestHubNodeId = OpenMaya.MTypeId(0x10000) # Must be < 0x80000

class manifestHub(OpenMayaMPx.MPxNode):
	stamp = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
		
	def compute(self, plug, data):
		return OpenMaya.kUnknownParameter
		
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( manifestHub() )
	
def nodeInitializer():
	msgAttr = OpenMaya.MFnMessageAttribute()
	
	manifestHub.stamp = msgAttr.create("stamp", "st")
	msgAttr.setArray(True)
	
	manifestHub.addAttribute(manifestHub.stamp)
	
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
