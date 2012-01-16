# manifest.py
#

import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import pymel.core as PyMEL  

kNodeName = "manifestHub"
kNodeId = OpenMaya.MTypeId(0x10000) # Must be < 0x80000

# ---------------------------------------------------------------------------

class manifestHub(OpenMayaMPx.MPxNode):
	aStamp = OpenMaya.MObject()
	aPositions = OpenMaya.MObject()
	aRotation = OpenMaya.MObject()
	aSpawned = OpenMaya.MObject()
	aTranslate = OpenMaya.MObject()
	aRotate = OpenMaya.MObject()
	aRotateX = OpenMaya.MObject()
	aRotateY = OpenMaya.MObject()
	aRotateZ = OpenMaya.MObject()
	
	timeChangedCallbackId = None
	idleCallbackId = None
	
	spawnPending = {}
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	
	def postConstructor(self):
		self.preRemovalCB = OpenMaya.MNodeMessage.addNodePreRemovalCallback(self.thisMObject(), preRemovalCB)
		self.dirtyPlugCB = OpenMaya.MNodeMessage.addNodeDirtyPlugCallback(self.thisMObject(), dirtyPlugCB)
		self.attributeChangedCB = OpenMaya.MNodeMessage.addAttributeChangedCallback(self.thisMObject(), attributeChangedCB)
	
	def compute(self, plug, data):
		print "Computing %s" % plug.name()
		if plug == manifestHub.aTranslate:
			hTranslateArray = data.outputArrayValue(manifestHub.aTranslate)
			
			try:
				positionsArray = OpenMaya.MFnVectorArrayData( data.inputValue(manifestHub.aPositions).data() )
			except:
				# sys.stderr.write( "manifestHub: No positions found" )
				pass
			else:
				# For efficiency we extract and output *all* the
				# translations from the incoming positions array
				numPositions = positionsArray.length()
				
				try:
					builder = hTranslateArray.builder()

					for i in range(0, numPositions):
						pos = positionsArray.array()[i] # MFNVectorArrayData -> MVectorArray -> MVector
						hElement = builder.addElement(i)
						hElement.set3Float(pos.x, pos.y, pos.z)
				except:
					sys.stderr.write( "Unable to create manifestHub.translate elements" )
			
			hTranslateArray.setAllClean()
			
		elif plug == manifestHub.aRotate:
			hRotateArray = data.outputArrayValue(manifestHub.aRotate)

			try:
				rotationArray = OpenMaya.MFnVectorArrayData( data.inputValue(manifestHub.aRotation).data() )
			except:
				pass
			else:
				# For efficiency we extract and output *all* the
				# rotations from the incoming rotation array
				numRotations = rotationArray.length()

				try:
					rotBuilder = hRotateArray.builder()

					for i in range(0, numRotations):
						rot = rotationArray.array()[i] # MFNVectorArrayData -> MVectorArray -> MVector
						hEl = rotBuilder.addElement(i)
						
						# Angles are in radians
						hEl.child(manifestHub.aRotateX).setMAngle(OpenMaya.MAngle(rot.x))
						hEl.child(manifestHub.aRotateY).setMAngle(OpenMaya.MAngle(rot.y))
						hEl.child(manifestHub.aRotateZ).setMAngle(OpenMaya.MAngle(rot.z))
				except:
					sys.stderr.write( "Unable to create manifestHub.rotate elements" )

			hRotateArray.setAllClean()
				
				
		else:
			return OpenMaya.kUnknownParameter

# ---------------------------------------------------------------------------

def nodeCreator():
	return OpenMayaMPx.asMPxPtr( manifestHub() )	


def nodeInitializer():
	msgAttr = OpenMaya.MFnMessageAttribute()
	typedAttr = OpenMaya.MFnTypedAttribute()
	numericAttr = OpenMaya.MFnNumericAttribute()
	unitAttr = OpenMaya.MFnUnitAttribute()
	compAttr = OpenMaya.MFnCompoundAttribute()
	
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
	msgAttr.setUsesArrayDataBuilder(True)
	msgAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kDelete)
	manifestHub.addAttribute(manifestHub.aSpawned)
	
	manifestHub.aPositions = typedAttr.create("positions", "pos", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(True)
	typedAttr.setReadable(False)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	manifestHub.addAttribute(manifestHub.aPositions)
	
	manifestHub.aRotation = typedAttr.create("rotation", "rot", OpenMaya.MFnData.kVectorArray)
	typedAttr.setWritable(True)
	typedAttr.setReadable(False)
	typedAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	typedAttr.setDefault(OpenMaya.MFnVectorArrayData().create())
	manifestHub.addAttribute(manifestHub.aRotation)
	
	manifestHub.aTranslate = numericAttr.createPoint("translate", "t")
	numericAttr.setWritable(False)
	numericAttr.setArray(True)
	numericAttr.setUsesArrayDataBuilder(True)
	numericAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	manifestHub.addAttribute(manifestHub.aTranslate)

	manifestHub.aRotateX = unitAttr.create("rotateX", "rx", OpenMaya.MFnUnitAttribute.kAngle)
	unitAttr.setWritable(False)
	manifestHub.addAttribute(manifestHub.aRotateX)
	manifestHub.aRotateY = unitAttr.create("rotateY", "ry", OpenMaya.MFnUnitAttribute.kAngle)
	unitAttr.setWritable(False)
	manifestHub.addAttribute(manifestHub.aRotateY)
	manifestHub.aRotateZ = unitAttr.create("rotateZ", "rz", OpenMaya.MFnUnitAttribute.kAngle)
	unitAttr.setWritable(False)
	manifestHub.addAttribute(manifestHub.aRotateZ)
	
	manifestHub.aRotate = compAttr.create("rotate", "r")
	compAttr.setWritable(False)
	compAttr.setArray(True)
	compAttr.setUsesArrayDataBuilder(True)
	compAttr.setDisconnectBehavior(OpenMaya.MFnAttribute.kReset)
	compAttr.addChild(manifestHub.aRotateX)
	compAttr.addChild(manifestHub.aRotateY)
	compAttr.addChild(manifestHub.aRotateZ)
	manifestHub.addAttribute(manifestHub.aRotate)
	
	manifestHub.attributeAffects(manifestHub.aPositions, manifestHub.aTranslate)
	manifestHub.attributeAffects(manifestHub.aRotation, manifestHub.aRotate)


# ---------------------------------------------------------------------------
# Spawning

def spawn(hub):
	print "Spawning..."
	positions = hub.positions.get()
	
	numPositions = 0
	if positions != None:
		numPositions = len(positions);
	
	# Do we need to add or remove any spawned geometry?
	spawnIndices = hub.spawned.getArrayIndices()
	numSpawned = len(spawnIndices)
	
	print "%d positions and %d spawn found" % (numPositions, numSpawned)
	
	# TODO: Make this more robust
	if numPositions > numSpawned:
		# Get stamps
		stamps = {}
		for stampIndex in hub.stamp.getArrayIndices():
			stamps[stampIndex] = hub.stamp.elementByLogicalIndex(stampIndex).inputs()[0]
			
			if len(stamps) == 0:
				break;
			
			print "Spawning %d stamps" % (numPositions - numSpawned)
			for i in range(numSpawned, numPositions):
				nodesCreated = PyMEL.general.duplicate(stamps[0], inputConnections=True, instanceLeaf=True)
				
				# TODO: We assume the first element is the container. More stringent checking is required
				newContainer = nodesCreated[0]
				newContainer.addAttr( 'spawnedBy', at=float )
				hub.spawned.elementByLogicalIndex(i).connect(newContainer.spawnedBy)
				hub.translate.elementByLogicalIndex(i).connect(newContainer.translate)
				hub.rotate.elementByLogicalIndex(i).connect(newContainer.rotate)
		
	elif numPositions < numSpawned:
		print "Deleting %d stamps" % (numSpawned - numPositions)
		for i in range(numPositions, numSpawned):
			# We begin a delicate dance of disconnecting attributes and deleting nodes
			# For some reason, deleting the last remaining spawned node will
			# also trigger the removal of the manifestHub. This is a mystery.
			# However, if we first disconnect the attributes *then* delete the
			# spawned nodes we are apparently ok... ???
			spawnPlug = hub.spawned.elementByLogicalIndex(i)
			spawned = spawnPlug.outputs()
			
			spawnPlug.remove(b=True)
			hub.rotate.elementByLogicalIndex(i).remove(b=True)
			hub.translate.elementByLogicalIndex(i).remove(b=True)
			
			print "Removed object [%d] connections" % i
			
			for spawnedNode in spawned:
				PyMEL.general.delete(spawnedNode)
			
			print "Deleted object [%d]" % i


def processSpawnPending():
	while len(manifestHub.spawnPending) > 0:
		(hub,_) = manifestHub.spawnPending.popitem()
		spawn(hub)


# ---------------------------------------------------------------------------
# Scene-wide callbacks

	
def addIdleHandler():
	if manifestHub.idleCallbackId == None:
		manifestHub.idleCallbackId = OpenMaya.MEventMessage.addEventCallback("idle", idleCB)


def removeIdleHandler():
	if manifestHub.idleCallbackId != None:
		OpenMaya.MEventMessage.removeCallback(manifestHub.idleCallbackId)
		manifestHub.idleCallbackId = None

def timeChangedCB(time, clientData):
	processSpawnPending()
	
	assert len(manifestHub.spawnPending) == 0
	removeIdleHandler()	


def idleCB(clientData):
	#print "Idle"
	processSpawnPending()
	
	assert len(manifestHub.spawnPending) == 0
	removeIdleHandler()
			
# ---------------------------------------------------------------------------
# Callbacks for this node

def dirtyPlugCB(nodeObject, plug, clientData):
	print "%s is dirty" % PyMEL.PyNode(plug).name()
	if plug == manifestHub.aPositions:
		hub = PyMEL.PyNode(nodeObject)
		manifestHub.spawnPending[hub] = True
		addIdleHandler()


def attributeChangedCB(msg, plug, otherPlug, clientData):
	if plug == manifestHub.aPositions:
		# The msg argument is actually a collection of bit fields
		if msg & OpenMaya.MNodeMessage.kConnectionBroken:
			print "%s connection broken" % PyMEL.PyNode(plug).name()
			PyMEL.PyNode(plug).set([])
		
		elif msg & OpenMaya.MNodeMessage.kAttributeSet:
			print "%s attribute set" % PyMEL.PyNode(plug).name()
			
			hub = PyMEL.PyNode(plug).node()
			manifestHub.spawnPending[hub] = True
			addIdleHandler()
		
			
def preRemovalCB(nodeObject, clientData):
	hub = PyMEL.PyNode(nodeObject)
	print "%s pre removal" % hub.name()	
	# Remove node from the spawn pending list
	if manifestHub.spawnPending.has_key(hub):
		del manifestHub.spawnPending[hub]
		
	if len(manifestHub.spawnPending) == 0:
		removeIdleHandler()
