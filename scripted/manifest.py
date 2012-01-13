# manifest.py
#

exec('import manifestPlugin' ) in globals()
exec('reload(manifestPlugin)' ) in globals()

# Plug-in initialization and uninitialization
def initializePlugin(mobject):
	manifestPlugin.initializePlugin(mobject)

def uninitializePlugin(mobject):
	manifestPlugin.uninitializePlugin(mobject)
