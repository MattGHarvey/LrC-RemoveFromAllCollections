
--RemoveFromAllCollections 
--Removes selected photo(s) from all collections they are members of in Lightroom Classic 
--[[ Disclaimer

This project is provided “as is” without warranty of any kind, express or implied, including but not limited to warranties of merchantability, fitness for a particular purpose, or non-infringement. The developer assumes no responsibility or liability for any errors, omissions, or issues arising from the use of this software.

By using this project, you acknowledge and agree that the developer is not liable for any direct, indirect, incidental, or consequential damages resulting from its use. Use at your own risk. ]]
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
