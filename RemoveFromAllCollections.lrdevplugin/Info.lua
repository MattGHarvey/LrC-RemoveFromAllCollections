
return {
	
	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 1.3, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'info.robotsprocket.RemoveFromAllCollections',

	LrPluginName = LOC "$$$/RemoveFromAllCollections/PluginName=RemoveFromAllCollections",
	
	LrLibraryMenuItems = {
	    {
		    title = LOC "$$$/RemoveFromAllCollections/Execute=RemoveFromAllCollections current selection",
		    file = "RemoveFromAllCollections.lua",
		},
	},
	VERSION = {major=1, minor=0, revision=0, build=1, }
	
}
