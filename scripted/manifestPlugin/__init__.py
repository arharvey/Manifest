import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

exec('import manifestHub' ) in globals()
exec('reload(manifestHub)' ) in globals()

# Plug-in initialization and uninitialization
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( manifestHub.kManifestHubNodeName, manifestHub.kManifestHubNodeId, manifestHub.nodeCreator, manifestHub.nodeInitializer)
		
		#manifestHub.timeChangedCallbackId = OpenMaya.MDGMessage.addTimeChangeCallback(timeChangedCB)
	except:
		sys.stderr.write( "Failed to register node: %s" % manifestHub.kManifestHubNodeName)
		raise


def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		#OpenMaya.MDGMessage.removeCallback(manifestHub.timeChangedCallbackId);
		
		mplugin.deregisterNode( manifestHub.kManifestHubNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % manifestHub.kManifestHubNodeId)
		raise
