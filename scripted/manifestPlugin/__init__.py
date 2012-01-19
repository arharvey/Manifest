import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

exec('import manifestHub' ) in globals()
exec('reload(manifestHub)' ) in globals()

#exec('import cyclone' ) in globals()
#exec('reload(cyclone)' ) in globals()

# Plug-in initialization and uninitialization
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerTransform( manifestHub.kNodeName, manifestHub.kNodeId, manifestHub.nodeCreator, manifestHub.nodeInitializer, \
									OpenMayaMPx.MPxTransformationMatrix().creator, OpenMayaMPx.MPxTransformationMatrix().baseTransformationMatrixId)
		#mplugin.registerNode( cyclone.kNodeName, cyclone.kNodeId, cyclone.nodeCreator, cyclone.nodeInitializer)
		
		manifestHub.manifestHub.timeChangedCallbackId = OpenMaya.MDGMessage.addTimeChangeCallback(manifestHub.timeChangedCB)
	except:
		sys.stderr.write( "Failed to register node" )
		raise


def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		manifestHub.removeIdleHandler()
		OpenMaya.MDGMessage.removeCallback(manifestHub.manifestHub.timeChangedCallbackId);
		
		#mplugin.deregisterNode( cyclone.kNodeId )
		mplugin.deregisterNode( manifestHub.kNodeId )
	except:
		sys.stderr.write( "Failed to deregister node" )
		raise
