# manifest.py
#

import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import pymel.core as PyMEL  

kManifestHubNodeName = "manifestHub"
kManifestHubNodeId = OpenMaya.MTypeId(0x10000) # Must be < 0x80000

class manifestHub(OpenMayaMPx.MPxNode):
	aStamp = OpenMaya.MObject()
	aPositions = OpenMaya.MObject()
	aSpawned = OpenMaya.MObject()
	aTranslate = OpenMaya.MObject()
	
	timeChangedCallbackId = None
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	
	def postConstructor(self):
		self.dirtyPlugCB = OpenMaya.MNodeMessage.addNodeDirtyPlugCallback(self.thisMObject(), dirtyPlugCB)
		self.attributeChangedCB = OpenMaya.MNodeMessage.addAttributeChangedCallback(self.thisMObject(), attributeChangedCB)
	
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
	print "Create 1\n"
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
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	manifestHub.addAttribute(manifestHub.aPositions)
	
	manifestHub.aTranslate = numericAttr.createPoint("translate", "t")
	numericAttr.setWritable(False)
	numericAttr.setArray(True)
	numericAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	manifestHub.addAttribute(manifestHub.aTranslate)
	
	manifestHub.attributeAffects(manifestHub.aPositions, manifestHub.aTranslate)


def spawn(hub):
	positions = hub.positions.get()
	
	numPositions = 0
	if positions != None:
		numPositions = len(positions);
	
	#print "%d positions found\n" % numPositions
	
	# Do we need to add or remove any spawned geometry?
	spawnIndices = hub.spawned.getArrayIndices()
	numSpawned = len(spawnIndices)
	
	# TODO: Make this more robust
	if numPositions > numSpawned:
		# Get stamps
		stamps = {}
		for stampIndex in hub.stamp.getArrayIndices():
			stamps[stampIndex] = hub.stamp.elementByLogicalIndex(stampIndex).inputs()[0]
			
			if len(stamps) == 0:
				break;
			
			# print "Spawning %d stamps\n" % (numPositions - numSpawned)
			for i in range(numSpawned, numPositions):
				nodesCreated = PyMEL.general.duplicate(stamps[0], inputConnections=True)
				
				# TODO: We assume the first element is the container. More stringent checking is required
				newContainer = nodesCreated[0]
				newContainer.addAttr( 'spawnedBy', at=float )
				hub.spawned.elementByLogicalIndex(i).connect(newContainer.spawnedBy)
				hub.translate.elementByLogicalIndex(i).connect(newContainer.translate)
		
	elif numPositions < numSpawned:
		# print "Deleting %d stamps\n" % (numSpawned - numPositions)
		for i in range(numPositions, numSpawned):
			spawnPlug = hub.spawned.elementByLogicalIndex(i)
			for spawned in spawnPlug.outputs():
				PyMEL.general.delete(spawned)
			
			spawnPlug.remove()
			hub.translate.elementByLogicalIndex(i).remove()

# Time callback
def timeChangedCB(time, clientData):
	hubNodes = PyMEL.ls(type=kManifestHubNodeName)
	for hub in hubNodes:
		spawn(hub)


def dirtyPlugCB(nodeObject, plug, clientData):
	if plug == manifestHub.aPositions:
		#print "%s is DIIIIRRRTY!!!\n" % PyMEL.PyNode(plug).name()
		
		hub = PyMEL.PyNode(nodeObject)
		spawn(hub)

def attributeChangedCB(msg, plug, otherPlug, clientData):
	if plug == manifestHub.aPositions:
		if msg & OpenMaya.MNodeMessage.kConnectionBroken:
			#print "%s connection broken\n" % PyMEL.PyNode(plug).name()
			PyMEL.PyNode(plug).set([])
			
		elif msg & OpenMaya.MNodeMessage.kAttributeSet:
			#print "%s attribute set\n" % PyMEL.PyNode(plug).name()
			
			hub = PyMEL.PyNode(plug).node()
			spawn(hub)
