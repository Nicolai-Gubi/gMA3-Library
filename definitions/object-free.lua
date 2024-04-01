---@meta

--
-- These are all the object-free api function in the grandMA3 system. 
-- some are not properly described yet in this definition.
--
-- This list is from version 1.9.3.3
--
--

--- This table is used for the "AddFixtures" function.
---@class tableFixture
---@field mode lightuserdata Handle to a DMX mode.
---@field amount integer The amount of fixtures that should be added.
---@field undo? string An string with an undo text.
---@field parent? lightuserdata Handle to parent fixture.
---@field insert_index? integer An integer indicating the index where the fixture should be inserted.
---@field idtype? string A string with the Id Type for the fixture. Not needed if the Id Type should be "Fixture".
---@field cid? string Astring with the CID - only valid if the "idtype" is not "Fixture".
---@field fid? string A string with the FID.
---@field name? string A string withthe fixture name.
---@field layer? string A string with the layer.
---@field class? string A string with the class.
---@field patch? table Array of up to 8 addresses as strings in "Universe.Address" format.

--001
--Object-Free - AddFixtures({'mode'=light_userdata:dmx_mode, 'amount'=integer:amount[, 'undo'=string:undo_text][, 'parent'=light_userdata:handle][, 'insert_index'=integer:value][, 'idtype'=string:idtype][, 'cid'=string:cid][, 'fid'=string:fid][, 'name'=string:name][, 'layer'=string:layer][, 'class'=string:class][, 'patch'={table 1..8: string:address}]}): boolean:success or nothing

---
---
---
---@param fixtureTable tableFixture
---@return boolean|nil # Returns true if success. return nil is failure.
function AddFixtures(fixtureTable) end

--002
--Object-Free - AddonVars(string: addon name): light userdata: addon variables

---
---[Online Manual Page]https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_addonvars.html
---
---@param addon_name string The name of the Addon.
---@return lightuserdata # Returns the handle to the addon variable set.
function AddonVars(addon_name) end


--003
--Object-Free - BuildDetails(nothing): table:build details

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_builddetails.html)
---
---@return table # Returns a table with the build details.
function BuildDetails() end

--004
--Object-Free - CheckDMXCollision(light_userdata:dmx_mode, string:dmx_address[ ,integer:count[ ,integer:break_index]]): boolean:no_collision_found

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_checkdmxcollision.html)
---
---@param dmxMode lightuserdata Handle to DMX mode.
---@param dmxAddress string The address as a string in "Universe.Address" format.
---@param count? integer|nil The optional count for the number of fixtures (break_index channel amount) to check.
---@param breakIndex? integer The optional break_index number for fixtures with multiple breaks.
---@return boolean # True = No collision, False = collision.
function CheckDMXCollision(dmxMode, dmxAddress, count, breakIndex) end

--005
--Object-Free - CheckFIDCollision(integer:FID [,integer:count [,integer:type]]): boolean: true - no FID collisions, false - collisions

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_checkfidcollision.html)
---
---@param FID integer The ID to check.
---@param count? integer|nil The count of subsequent IDs to check.
---@param type? integer The FixtureIDType index number. Default value is 0 = "Fixture". 
---@return boolean # True = No collision, False = collision.
function CheckFIDCollision(FID, count, type) end

--006
--Object-Free - ClassExists(string:class_name): boolean:result

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_classexists.html)
--- Checks if a class exists.
---
---@param class_name string A string containing a single word that could be a class.
---@return boolean # Returns true if the class exists.
function ClassExists(class_name) end

--007
--Object-Free - CloseAllOverlays(nothing): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_closealloverlays.html)
--- Closes any open overlays on any screen.
---
function CloseAllOverlays() end

--008
--Object-Free - CloseUndo(light userdata: handle to undo): boolean: true if was closed, false - if it's still in use

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_closeundo.html)
---
---@param undoHandle lightuserdata This should be a handle for an existing undo object.
---@return boolean # Returns true if the undo object was closed, false if it could not be closed.
function CloseUndo(undoHandle) end

--009
--Object-Free - Cmd(string:format [,light_userdata:undo], ...): string:command execution result (Ok, Syntax Error, Illegal Command...)

---
---[Online Manual Page](https://help2.malighting.com/Topic/2634629d-527a-44c7-96f9-68ecd40d06f3)
---
---@generic T
---@param format string The string input is printed in the Command Line History and the System Monitor. It allows for format specifiers.
---@param undo? lightuserdata Handle to an undo object.
---@param ...? T Additional arguments.
---@return string # The returned string indicates the command execution result.
function Cmd(format, undo, ...) end

--010
--Object-Free - CmdIndirect(string:cmd_to_execute [,light_userdata:undo [,light_userdata:target]]): nothing

---
---[Online Manual Page](https://help2.malighting.com/Topic/07a5c65c-5a3b-492b-af99-b910d4d0ded3)
---
---@param cmd string Command to be executed.
---@param undo? lightuserdata|nil Handle to an undo object.
---@param target? lightuserdata Handle to a display object.
function CmdIndirect(cmd, undo, target) end

--011
--Object-Free - CmdIndirectWait(string:cmd_to_execute [,light_userdata:undo [,light_userdata:target]]): nothing

---
---[Online Manual Page](https://help2.malighting.com/Topic/756c82f1-fb59-41c0-ace4-cb541868f7ce)
---
---@param cmd string Command to be executed.
---@param undo? lightuserdata|nil Handle to an undo object.
---@param target? lightuserdata Handle to a display object.
function CmdIndirectWait(cmd, undo, target) end

--012
--Object-Free - CmdObj(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/8260a5e3-b693-4f26-8d57-00c7fe4cca2f)
---
---@return lightuserdata # Handle to the command object.
function CmdObj() end

--013
--Object-Free - ColMeasureDeviceDarkCalibrate(): int:flag
--ToDo

---@return integer
function ColMeasureDeviceDarkCalibrate() end

--014
--Object-Free - ColMeasureDeviceDoMeasurement(): table:values
--ToDo

---@return table # The returned table contains values.
function ColMeasureDeviceDoMeasurement() end

--015
--Object-Free - ConfigTable(nothing): table:config details

---
---[Online Manual Page](https://help2.malighting.com/Topic/fbc8f1af-96e0-44b1-bcde-537e3a046430)
---
---@return table # Returns a Key-Value table with the configuration details.
function ConfigTable() end

--016
--Object-Free - Confirm([string:title [,string:message [,integer:displayIndex [,boolean:showCancel]]]]): boolean:result

---
---[Online Manual Page](https://help2.malighting.com/Topic/3741ac28-49aa-468b-b855-a3f1912a1257)
---
---@param title? string This string is the title for the pop-up.
---@param message? string|nil This strinf is the message text in the pop-up.
---@param displayIndex? integer|nil This does not work, use nil - the intent is that the pop-up should only be on a specific display - use nil for all displays.
---@param showCancel? boolean Show (True - default) a cancel button or not (False).
---@return boolean # The retur from the Confirm pop-up - True if "ok", False if anything other than comfirmation.
function Confirm(title, message, displayIndex, showCancel) end

--017
--Object-Free - CreateDirectoryRecursive(string:path): boolean:result
--ToDo

---@param path string
---@return boolean
function CreateDirectoryRecursive(path) end

--018
--Object-Free - CreateMultiPatch({light_userdata:fixture_handles}, integer:count[ ,string:undo_text]): integer:amount_of_multi-patch_fixtures_created
--ToDo

---@param fixtureHandleArray any
---@param count integer
---@param undoText? string
---@return integer # The amount of fixtures created
function CreateMultiPatch(fixtureHandleArray, count, undoText) end

--019
--Object-Free - CreateUndo(string:undo text): light userdata: handle to undo

---
---[Online Manual Page](https://help2.malighting.com/Topic/afea7d96-262e-4062-a167-15e4acc02e3b)
---
---@param undoText string Identifying name of the undo object.
---@return lightuserdata # Handle for the undo object.
function CreateUndo(undoText) end

--020
--Object-Free - CurrentEnvironment(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/afbc9657-492a-465d-9608-f7be429456bf)
---
---@return lightuserdata # Handle to the currently active environment object.
function CurrentEnvironment() end

--021
--Object-Free - CurrentExecPage(nothing): light_userdata:handle to current ExecPage object

---
---[Online Manual Page](https://help2.malighting.com/Topic/2ffeff24-7aca-4e24-91de-758c1e19446f)
---
---@return lightuserdata # Handle to the currently executor page.
function CurrentExecPage() end

--022
--Object-Free - CurrentProfile(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/038abe0f-2fb6-404d-bf6f-6fc940a7fd26)
---
---@return lightuserdata # Handle to the currently active profile object.
function CurrentProfile() end

--023
--Object-Free - CurrentScreenConfig(nothing): light_userdata:handle

---
---
---
---@return lightuserdata # Handle to the current screen configuration.
function CurrentScreenConfig() end

--024
--Object-Free - CurrentUser(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/08c072f5-23a5-4fba-a47c-0ed4f65871bd)
---
---@return lightuserdata # Handle to the currently active user object.
function CurrentUser() end

--025
--Object-Free - DataPool(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/fa28eb4d-9b45-489d-9c55-6d217f7afa4e)
---
---@return lightuserdata # Handle to the currently active DataPool object.
function DataPool() end

--026
--Object-Free - DefaultDisplayPositions(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/e69b63cc-a2fd-46a7-a51e-66996cb8623a)
---
---@return lightuserdata # Handle to the DefaultDisplayPositions object.
function DefaultDisplayPositions() end

--027
--Object-Free - DelVar(light userdata: variables, string:varname): bool:success

---
---[Online Manual Page](https://help2.malighting.com/Topic/09c6afa6-b6e4-45a7-972e-8e4dab34eaa4)
---
---@param variableSet lightuserdata Handle to a set of variables (Global or User).
---@param variableName string Name of the variable to be deleted.
---@return boolean # True if the variable was deleted - False if it could not be deleted.
function DelVar(variableSet, variableName) end

--028
--Object-Free - DeskLocked(): boolean: true if desk is locked

---
---[Online Manual Page](https://help2.malighting.com/Topic/587aaf2b-038f-4fe7-8c4a-cfcb83e108b6)
---
---@return boolean # True if the station is locked - False if it is not locked.
function DeskLocked() end

--029
--Object-Free - DeviceConfiguration(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_deviceconfiguration.html)
---
---@return lightuserdata # Handle to the Device Configuration {Root()[21]}
function DeviceConfiguration() end

--030
--Object-Free - DevMode3d(nothing): string::DevMode3d
--ToDo

---@return string 
function DevMode3d() end

--031
--Object-Free - DirList(string:path [,string:filter(s)]): array of {name:string, size:int, time:int}
--ToDo

---@param path string
---@param filters? string
---@return table # Array of objects
function DirList(path, filters) end

--032
--Object-Free - DrawPointer(integer:display_index, {x,y}:position[, number:duration]): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_drawpointer/en/1.9)
---
---@param displayIndex integer This integer needs to an index for a display.
---@param position table This kay-value table needs to have 'x' and 'y' keys with values indicating a position on the display.
---@param duration? number The duration is in milliseconds. It it not provided, then the pointer stays visible.
function DrawPointer(displayIndex, position, duration) end

--033
--Object-Free - DumpAllHooks(nothing): nothing
--ToDo

function DumpAllHooks() end

--033
--Object-Free - Echo(string:format ...): nothing

---
---[Online Manual Page](https://help2.malighting.com/Topic/57ba2eab-772d-4f10-9ff2-c60a46fdcdfe)
---
---@generic T
---@param format string The string input is printed in the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function Echo(format, ...) end

--034
--Object-Free - ErrEcho(string:format ...): nothing

---
---[Online Manual Page](https://help2.malighting.com/Topic/7bde0354-ee9d-445b-a24d-71efe07cf1b2)
---
---@generic T
---@param format string The string input is printed in the System Monitor in red. It allows for format specifiers.
---@param ...? T Additional arguments.
function ErrEcho(format, ...) end

--035
--Object-Free - ErrPrintf(string:format ...): nothing

---
---[Online Manual Page](https://help2.malighting.com/Topic/afadc8e3-6d24-4dd1-aa20-55774c2cd470)
---
---@generic T
---@param format string The string input is printed in red in the Command Line History and the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function ErrPrintf(format, ...) end

--036
--Object-Free - Export(string:filename, table:export_data): bool:success

---
---[Online Manual Page](https://help2.malighting.com/Topic/78def87c-d777-4f4d-8bd6-8630d2be0f53)
---
---@param filename string The filename for the exported file (XML format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function Export(filename, exportData) end

--037
--Object-Free - ExportCSV(string:filename, table:export_data): bool:success

---
---[Online Manual Page](https://help2.malighting.com/Topic/6d8a5299-84c7-4896-aa3c-ba045e55cb9f)
---
---@param filename string The filename for the exported file (CSV format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function ExportCSV(filename, exportData) end

--038
--Object-Free - ExportJson(string:filename, table:export_data): bool:success

---
---[Online Manual Page](https://help2.malighting.com/Topic/65cbcfdf-fdd9-4207-8daf-eae4b09654f5)
---
---@param filename string The filename for the exported file (JSON format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function ExportJson(filename, exportData) end

--039
--Object-Free - FileExists(string:path): boolean:result

---
---
---
---@param path string 
---@return boolean
function FileExists(path) end

--040
--Object-Free - FindBestDMXPatchAddr(light_userdata:patch, integer:starting address, integer:footprint): integer:absolute address
--ToDo

---
---
---
---@param patch lightuserdata
---@param startingAddress integer
---@param footprint integer
---@return integer # The absolute DMX address
function FindBestDMXPatchAddr(patch, startingAddress, footprint) end

--041
--Object-Free - FindBestFocus([light_userdata:handle]): nothing
--ToDo

---
---
---
---@param handle? lightuserdata
function FindBestFocus(handle) end

--042
--Object-Free - FindNextFocus([bool:backwards(false)[,int(Focus::Reason):reason(UserTabKey)]]): nothing
--ToDo

---
---
---
---@param backwards? boolean|nil 
---@param reason? integer
function FindNextFocus(backwards, reason) end

--043
--Object-Free - FindTexture(string:texture name): light userdata: handle to texture found
--ToDo

---
---
---
---@param textureName string
---@return lightuserdata # Handle to texture matching the string input
function FindTexture(textureName) end

--044
--Object-Free - FixtureType(nothing): light_userdata:handle
--ToDo

---
---
---
---@return lightuserdata 
function FixtureType() end

--045
--Object-Free - FromAddr(string:address [, light_userdata:base handle]): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Topic/78d21d61-c09e-40e6-aab5-4e79ac87594b)
---
---@param address string A string identifying an object. It can be a numbered or named address.
---@param baseHandle? lightuserdata This optional handle can specify a different base location than "Root". It still needs to be a base location in the address path from the root to the object.
---@return lightuserdata The handle for the addressed object.
function FromAddr(address, baseHandle) end

--046
---Object-Free - GetApiDescriptor(nothing): table: api content

---
---[Online Manual Page](https://help2.malighting.com/Topic/6aaf116c-edd1-4630-9318-84b68e051423)
---
---@return table # A table with the factory description of the object free functions.
function GetApiDescriptor() end

--047
--Object-Free - GetAttributeByUIChannel(integer: UI channel index): light userdata: reference to attribute or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getattributebyuichannel/en/1.9)
---
---@param uiChannelIndex integer This index integer identifies a UI Channel (Parameter List).
---@return lightuserdata|nil # Handle to the attribute.
function GetAttributeByUIChannel(uiChannelIndex) end

--048
--Object-Free - GetAttributeCount(nothing): int:attribute count

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getattributecount/en/1.9)
---
---@return integer # The amount of attributes.
function GetAttributeCount() end

--049
--Object-Free - GetAttributeIndex(string:attribute name): int:attribute index

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getattributeindex/en/1.9)
---
---@param attributeName string The string matching the attribute system name.
---@return integer # The returned integer is the index of the attribute.
function GetAttributeIndex(attributeName) end

--050
--Object-Free - GetButton(light_userdata:usb device object handle): table of bool:state

---
---
---
---@param usbDeviceHandle lightuserdata Handle to a MA3module.
---@return table # A table of 512 booleans indicating if buttons are pressed.
function GetButton(usbDeviceHandle) end

--051
--Object-Free - GetChannelFunction(int:ui channel index,int:attribute index): light_userdata: handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getchannelfunction/en/1.9)
---
---@param uiChannelIndex integer The index for a specific UI Channel (Parameter List).
---@param attributeIndex integer The index for an attribute (Attribute Definitions).
---@return lightuserdata # Handle to the channel function.
function GetChannelFunction(uiChannelIndex, attributeIndex) end

--052
--Object-Free - GetChannelFunctionIndex(int:ui channel index,int:attribute index): int:channel function index

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getchannelfunctionindex/en/1.9)
---
---@param uiChannelIndex integer The index for a specific UI Channel (Parameter List).
---@param attributeIndex integer The index for an attribute (Attribute Definitions).
---@return integer # Index number of the channel function.
function GetChannelFunctionIndex(uiChannelIndex, attributeIndex) end

--053
--Object-Free - GetClassDerivationLevel(string:class_name): integer:result or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getclassderivationlevel/en/1.9)
---
---@param className string This string should be the name of an existing class.
---@return integer # The returned integer indicates the class derivation level.
function GetClassDerivationLevel(className) end

--054
--Object-Free - GetDMXUniverse(integer:universe [,boolean: modePercent]): table of integer: dmx values

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getdmxuniverse/en/1.9)
---
---@param universe integer The DMX universe [1-1024].
---@param modePercent? boolean This bool indicates if the returned table is in DMX value [0-255] (False - default) or percent [0-100] (True). 
---@return table|nil # The returned table is all the DMX adresses in the provided universe and the current DMX Value in percent or DMX value. Nil if the universe is not granted.
function GetDMXUniverse(universe, modePercent) end

--055
--Object-Free - GetDMXValue(integer:address [,integer:universe, boolean: modePercent]): integer: dmx value

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getdmxvalue/en/1.9)
---
---@param address integer The DMX address in absolute address or if a universe is provided, then from 1 to 512.
---@param universe? integer The DMX universe [1-1024].
---@param modePercent? boolean This bool indicates if the returned integer is in DMX value [0-255] (False - default) or percent [0-100] (True). 
---@return integer|nil # The DMX value of the provided DMX address in DMX or percent. Nil if the universe is not granted.
function GetDMXValue(address, universe, modePercent) end

--056
--Object-Free - GetDebugFPS(nothing): number: fps
--ToDo

---
---@return number 
function GetDebugFPS() end

--057
--Object-Free - GetDisplayByIndex(integer:display_index): light_userdata:display_handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getdisplaybyindex/en/1.9)
---
---@param displayIndex integer The integer needs to be an index number for one of the displays.
---@return lightuserdata # Handle to the display matching the index.
function GetDisplayByIndex(displayIndex) end

--058
--Object-Free - GetDisplayCollect(nothing): light_userdata:handle to DisplayCollect

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getdisplaycollect/en/1.9)
--- Root().GraphicsRoot.PultCollect["Pult 1"].DisplayCollect
---
---@return lightuserdata # Handle to the Display Collect object.
function GetDisplayCollect() end

--059
--Object-Free - GetExecutor(integer:exec number): light_userdata:handle to executor, light_userdata: handle to page

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getexecutor/en/1.9)
---
---@param execNumber integer The integer for an executor.
---@return lightuserdata executorHandle Handle to the executor.
---@return lightuserdata executorPage Handle to the current executor page.
function GetExecutor(execNumber) end

--060
--Object-Free - GetFocus(nothing): light_userdata:display_handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getfocus/en/1.9)
---
---@return lightuserdata # Handle to object that currently has focus.
function GetFocus() end

--061
--Object-Free - GetFocusDisplay(nothing): light_userdata:display_handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getfocusdisplay/en/1.9)
---
---@return lightuserdata # Handle to display that currently got focus.
function GetFocusDisplay() end

--062
--Object-Free - GetObjApiDescriptor(nothing): table: api content

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getobjapidescriptor/en/1.9)
---
---@return table # A table with the factory description of the object functions.
function GetObjApiDescriptor() end

--063
--Object-Free - GetPath(string:path type | int as path type from enum 'PathType' [,bool: create]): string:path

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getpath/en/1.9)
---
---@param pathType string|integer The string should indicate a folder name. If integer, then it should be an indicating index number from 'Enum.PathType'.
---@param create? boolean This boolean indicates if the folder should be created (True) if it does not exists - only works with string path type.
---@return string The returned string is the *first found* full path related to the provided argument.
function GetPath(pathType, create) end

--064
--Object-Free - GetPathOverrideFor(string:path type | int as path type from enum 'PathType', string:path [,bool: create]): string:overriden path
--ToDo

---
---@param pathType string|integer
---@param path string
---@param create? boolean
---@return string
function GetPathOverrideFor(pathType, path, create) end

--065
--Object-Free - GetPathSeparator(): 

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getpathseparater/en/1.9)
---
---@return string # The returned string is '/'(Linux) or '\\'(Windows) depending on the operating system.
function GetPathSeparator() end

--066
--Object-Free - GetPathType(light_userdata:target object [, integer: content type (Enums.PathContentType)]): path type name
--ToDo

---
---@param targetObject lightuserdata
---@param contentType integer
---@return string
function GetPathType(targetObject, contentType) end

--067
--Object-Free - GetPresetData(light_userdata:handle(Preset)[,phasers only(default: false)[,by fixtures(default: false)]]): array of phaser data
--ToDo

---
---@param presetHandle lightuserdata
---@param phasersOnly? boolean
---@param byFixtures? boolean
---@return table
function GetPresetData(presetHandle, phasersOnly, byFixtures) end

--068
--Object-Free - GetProgPhaser(number:uichannelindex, bool:phaser_only): {[abs_preset:<light_userdata: handle>][rel_preset:<light_userdata: handle>][fade:<val>][delay:<val>][speed:<Hz>][phase:<val>][measure:<val>][gridpos:<val>][mask_active_phaser:<bool>][mask_active_value:<bool>][mask_individual:<bool>] {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}*}
--ToDo

---
---@param uiChannelIndex number
---@param phaserOnly boolean
---@return table
function GetProgPhaser(uiChannelIndex, phaserOnly) end

--069
--Object-Free - GetProgPhaserValue(number:uichannelindex, number:step): {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}
--ToDo

---
---@param uiChannelIndex number
---@param step number
---@return table
function GetProgPhaserValue (uiChannelIndex, step) end

--070
--Object-Free - GetPropertyColumnId(light_userdata:handle, string:propertyname): LuaInteger
--ToDo

---
---@param handle lightuserdata
---@param propertyName string
---@return integer
function GetPropertyColumnId(handle, propertyName) end

--071
--Object-Free - GetRTChannel(integer: channel RT index): {ChannelRT descriptor} or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getrtchannel/en/1.9)
---
---@param rtChannelIndex integer The integer should be the index number for an RT Channel.
---@return table|nil # The returned table contains all relevant information about the RT channel. Nil is returned if the index doesn't match an RT channel.
function GetRTChannel(rtChannelIndex) end

--072
--Object-Free - GetRTChannelCount(nothing): int:rt channel count

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getrtchannelcount/en/1.9)
---
---@return integer  # The amount of RT channels.
function GetRTChannelCount() end

--073
--Object-Free - GetRTChannels(integer: fixture index or light userdata: reference to Fixture object[,boolean: as handles]): {array of RT channel indices or handles} or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getrtchannels/en/1.9)
---
---@param fixtureID integer|lightuserdata The integer should be the index number for a (sub)fixture. The handle (lightuserdata) should relate to a (sub)fixture object.
---@param asHandles boolean If True, then the returned table contains handles for RT Channel objects. If False then the returned table contains integers index values to the RT Channel objects.
---@return table|nil # The returned table can be a list of RT Channel indexes or handles to the same RT Channels. Nil is returned if the RT channel is not found.
function GetRTChannels(fixtureID, asHandles) end

--074
--Object-Free - GetRemoteVideoInfo(nothing): integer:wingID, boolean:isExtension
--ToDo
--Dont know what this actually returns - possibly Enums.VideoFileSource integer

---
---@param displayIndex integer
---@return integer
---@return boolean
function GetRemoteVideoInfo(displayIndex) end

--075
--Object-Free - GetSample(string: type ('MEMORY', 'CPU', 'CPUTEMP', 'GPUTEMP', 'SYSTEMP', 'FANRPM')): number: current value in percent

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getsample/en/1.9)
---
---@param type string The string should be one of the valid input types.
---|"'MEMORY'"  # 
---|"'CPU'" # 
---|"'CPUTEMP'" # 
---|"'GPUTEMP'" # 
---|"'SYSTEMP'" # 
---|"'FANRPM'" # 
---@return number # Current value in percent.
function GetSample(type) end

--076
--Object-Free - GetSelectedAttribute(): light_userdata:attribute handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getselectedattribute/en/1.9)
---
---@return lightuserdata # Handle to the currently selected attribute.
function GetSelectedAttribute()end

--077
--Object-Free - GetShowFileStatus(nothing): string::showfile status

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getshowfilestatus/en/1.9)
---
---@return Enums.ShowFileStatus # The returned string indicate the status of the showfile - i.e. 'ShowDownloaded'.
function GetShowFileStatus() end

--078
--Object-Free - GetSubfixture(int:subfixture index): light userdata:reference to Subfixture object or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getsubfixture/en/1.9)
---
---@param subfixtureIndex integer The integer shoudl be the patch index number for a fixture.
---@return lightuserdata|nil # Handle to the subfixture object. Nil is returned if the index does not match a subfixture.
function GetSubfixture(subfixtureIndex) end

--079
--Object-Free - GetSubfixtureCount(nothing): int:subfixture count

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getsubfixturecount/en/1.9)
---
---@return integer # The returned integer number represents the total amount of patched fixtures on all the stages in the show file.
function GetSubfixtureCount() end

--080
--Object-Free - GetTokenName(string:shortName): string:fullName
--ToDo

---
---@param shortName string This is the short version of the keyword, e.g. 'Seq'
---@return  string # The returned string is the full keyword
function GetTokenName(shortName) end

--081
--Object-Free - GetTokenNameByIndex(integer: token index): string:fullName
--ToDo

---
---@param tokenIndex integer 
---@return string # The returned string is the keyword matching the index
function GetTokenNameByIndex(tokenIndex) end

--082
--Object-Free - GetTopModal(nothing): light userdata: handle to top modal overlay
--ToDo

---
---@return lightuserdata # Handle to the top model overlay UI object
function GetTopModal() end

--083
--Object-Free - GetTopOverlay(integer:display_index): light userdata: handle to top overlay on the display
--ToDo

---
---@param displayIndex integer
---@return lightuserdata # Handle to the top overlay on the display matching the index
function GetTopOverlay(displayIndex) end

--084
--Object-Free - GetUIChannel(integer: channel UI index OR light userdata: ref to Subfixture, integer: attribute index or string: attribute name): {ChannelUI descriptor} or nil
--ToDo

---
---@param uiChannel integer|lightuserdata An integer for an UI Channel index or a handle referencing a subfixture object 
---@param attribute integer|string An integer or string indicating an attribute
---@return table|nil
function GetUIChannel(uiChannel, attribute) end

--085
--Object-Free - GetUIChannelCount(nothing): int:ui channel count

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getuichannelcount/en/1.9)
---
---@return integer # The intiger indicates the amount of UI Channels.
function GetUIChannelCount() end

--086
--Object-Free - GetUIChannelIndex(int:subfixture index,int:attribute index): int:ui channel index

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getuichannelindex/en/1.9)
---
---@param subfixtureIndex integer The integer identifying the subfixture.
---@param attributeIndex integer The integer identifying the attribute (Attribute Definitions).
---@return integer # The index to the UI Channel.
function GetUIChannelIndex(subfixtureIndex, attributeIndex) end

--087
--Object-Free - GetUIChannels(integer: subfixture index or light userdata: reference to Subfixture object[,boolean: as handles]): {array of UI channel indices or handles} or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getuichannels/en/1.9)
---
---@param subfixture integer|lightuserdata The integer or handle identifying the subfixture.
---@param asHandles? boolean This indicates if the returned table should contain handles (True) or index integers (False - default).
---@return table|nil # The returned table contains indexes or handles (based on the optional boolean) of the UI channels for the subfixture. Nil is returned of the subfixture is not identified.
function GetUIChannels(subfixture, asHandles) end

--088
--Object-Free - GetUIObjectAtPosition(integer:display_index, {x,y}:position): light_userdata:handle to UI object or nil
--ToDo

--- local position = {x = 1000, y = 500}
---@param displayIndex integer
---@param position table --{x,y}
---@return lightuserdata|nil
function GetUIObjectAtPosition(displayIndex, position) end

--089
--Object-Free - GetVar(light userdata: variables, string:varname): value

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_getvar/en/1.9)
---
---@param variableSet lightuserdata This is the handle to the variable set - GlobalVars(), UserVars(), AddonVars(), PluginVars()
---@param variableName string The name of the variable
---@return string|number|nil # The value of the variable - nil if the variable is not found
function GetVar(variableSet, variableName) end

--090
--Objects-Free - GlobalVars(): light userdata: global variables

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_globalvars/en/1.9)
---
---@return lightuserdata # Returns the handle to the global variable set.
function GlobalVars() end

--091
--Object-Free - HandleToInt(light_userdata:handle): LuaInteger

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_handletoint/en/1.9)
---
---@param handle lightuserdata The handle of the object.
---@return integer # The returned integer is the handle converted to an integer.
function HandleToInt(handle) end

--092
--Object-Free - HandleToStr(light_userdata:handle): string: handle in H#... format

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_handletostring/en/1.9)
---
---@param handle lightuserdata The handle of the object.
---@return string # The returned string is the handle translated into a hexadecimal format Starting with 'H#' followed by the hex string.
function HandleToStr(handle) end

--093
--Object-Free - HookObjectChange(function:callback, light_userdata:handle, light_userdata:plugin_handle [,light_userdata:target]): nothing
--ToDo - Update needed

---
---@param callback function
---@param handle lightuserdata
---@param pluginHandle lightuserdata
---@param target? lightuserdata
function HookObjectChange(callback, handle, pluginHandle, target) end

--094
--Object-Free - HostOS(nothing): string::OsType

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_hostos/en/1.9)
---
---@return string # A string is returned indicating the operating system e.g. 'Windows' or 'Linux'.
function HostOS() end

--095
--Object-Free - HostSubType(nothing): string::HostSubType

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_hostsubtype/en/1.9)
---
---@return string # A string is returned indicating the station sub type e.g. 'FullSize' or 'Light'.
function HostSubType() end

--096
--Object-Free - HostType(nothing): string::HostType

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_hosttype/en/1.9)
---
---@return string # A string is returned indicating the station type e.g. 'Console' or 'onPC'.
function HostType() end

--097
--Object-Free - Import(string:filename): table:content
-- ToDo - update needed

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_import/en/1.9)
---
---@param filename string
---@return table
function Import(filename) end

--098
--Object-Free - IncProgress(light_userdate:handle [, integer:delta]): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_incprogress/en/1.9)
---
---@param handle lightuserdata The handle for the progress bar.
---@param delta? integer The desired value change for the progress. This can be a negative value to decrease the value. The default value is "1".
function IncProgress(handle, delta) end

--099
--Object-Free - IntToHandle(LuaInteger): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_inttohandle/en/1.9)
---
---@param luaInteger integer The integer that correlates to an object's handle.
---@return lightuserdata # The returned handle of the object correlates with the integer.
function IntToHandle(luaInteger) end

--100
--Object-Free - IsClassDerivedFrom(string:derived_name, string:base_name): boolean:result
--ToDo

---
---
---@param derivedName string
---@param baseName string
---@return boolean
function IsClassDerivedFrom(derivedName,baseName) end

--101
--Object-Free - IsObjectValid(light_userdata:handle): true or nil

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_isobjectvalid/en/1.9)
---
---@param handle lightuserdata The parameter should be the handle to a possible object.
---@return boolean|nil # The returned value is a boolean True if the handle is a valid object or it returns nil if it is not a valid object.
function IsObjectValid(handle) end

--102
--Object-Free - Keyboard(integer: displayIndex, string:type('press','char','release'), (str:char(for type 'char') | str:keycode, bool:shift, bool:ctrl, bool:alt, bool:numlock)): nothing
--ToDo

---
---@param displayIndex integer
---@param type string
---|"'press'" #
---|"'char'" #
---|"'release'" #
---@param char string
---@param shift boolean
---@param ctrl boolean
---@param alt boolean
---@param numlock boolean
function Keyboard(displayIndex, type, char, shift, ctrl, alt, numlock) end

--103
--Object-Free - KeyboardObj(nothing): light_userdata:keyboard object handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_keyboardobj/en/1.9)
--- Root().GraphicsRoot.PultCollect["Pult 1"].Devices["Keyboard 2"]
---
---@return lightuserdata # Retirned handle to the first found keyboard object.
function KeyboardObj() end

--104
--Object-Free - LoadExecConfig(light_userdata: exec handle): nothing
--ToDo

---
---@param executorHandle lightuserdata
function LoadExecConfig(executorHandle) end

--105
--Object-Free - MasterPool(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_masterpool/en/1.9)
---
---@return lightuserdata # The returned handle to the pool of masters.
function MasterPool() end

--106
--Object-Free - MessageBox({title:string,[ backColor:string,][,timeout:number (ms)][,timeoutResultCancel:boolean][,timeoutResultID:number][ icon:string,][ titleTextColor:string,][ messageTextColor:string,] message:string[, display:(integer|lightuserdata)], commands:{array of {value:integer, name:string}}, inputs:{array of {name:string, value:string, blackFilter:string, whiteFilter:string, vkPlugin:string, maxTextLength:integer}}, states:{array of {name:string, state:boolean[,group:integer]}, selectors:{array of {name:string, selectedValue:integer, values:table[,type:integer 0-swipe, 1-radio]} }): {success:boolean, result:integer, inputs:{array of [name:string] = value:string}, states:{array of [name:string] = state:boolean}, selectors:{array of [name:string] = selected-value:integer}}

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_messagebox/en/1.9)
---
---@param tableMessageBox table {title:string, backColor:string, timeout:number, timeoutResultCancel:boolean, timeoutResultID:number, icon:string, titleTextColor:string, messageTextColor:string, message:string, display:integer|lightuserdata, commands:table{value:integer, name:string}, inputs:table{name:string, value:string, blackfilter:string, vkPlugin:string, maxTextLength:integer}, states:table{name:string, state:boolean, group:integer}, selectors:table{name:string, selectedValue:integer, values:table{valueName:integer,...}}}
---@return table # The returned table contains a boolean indicating success and a "result" integer returning an integer the value of the tapped command button or the timeout result ID. It can also contain sub tables for the inputs, states, or selectors. 
function MessageBox(tableMessageBox) end

--107
--Object-Free - Mouse(integer: displayIndex, string:type('press','move','release'), (str:button('Left', 'Middle', 'Right' for 'press', 'release') | integer:absX, integer:absY)): 
--ToDo

---
---@param displayIndex integer
---@param type string
---|"'press'" #
---|"'move'" #
---|"'release'" #
---@param button string
---|"'Left'" #
---|"'Middle'" #
---|"'Right'" #
function Mouse(displayIndex, type, button) end

--108
--Object-Free - MouseObj(nothing): light_userdata:mouse object handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_mouseobj/en/1.9)
--- Root().GraphicsRoot.PultCollect["Pult 1"].Devices["MouseCollect 1"]["Mouse 1"]
---
---@return lightuserdata # Returns the handle to the first found mouse object.
function MouseObj() end

--109
--Object-Free - ObjectList(string:address): table of light_userdata:handle
--ToDo - Update needed

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_objectlist/en/1.9)
---
---@param address string The string input should match the commandline input to make a selection of objects e.g. "Fixture 1 trhru 10".
---@return table # The table contains handles to the objects.
function ObjectList(address) end

--110
--Object-Free - OverallDeviceCertificate(nothing): pCertificate::OverallCertificate
--ToDo

---
---@return lightuserdata
function OverallDeviceCertificate() end

--111
--Object-Free - Patch(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_patch/en/1.9)
--- Root().ShowData.LivePatch
---
---@return lightuserdata # The returned handle to the patch object.
function Patch() end

--112
--Object-Free - PluginVars([string: plugin name]): light userdata: plugin variables
--ToDo

---
---
---Inside the current Screen Configuration, we have a collect of Plugin Preferences. 
---A plugin preference is currently only storing one value: the display preference. 
---so you can use the PluginVars for manipulating the preferenced display for some menus:
---e.g. to reset the display preference for executor editor, do this:
---local execEdit = PluginVars("ExecutorEditor");
---execEdit.DisplayIndex = "None";
---
---
---@param pluginName? string
---@return lightuserdata
function PluginVars(pluginName) end

--113
--Object-Free - PopupInput({title:str, caller:handle, items:table:{{'str'|'int'|'lua'|'handle', name, type-dependent}...}, selectedValue:str, x:int, y:int, target:handle, render_options:{left_icon,number,right_icon}, useTopLeft:bool, properties:{prop:value}, add_args:{FilterSupport='Yes'/'No'}}): string:value
--ToDo

---
---@param popupTable table
---@return string # Returned value from the pop-up
function PopupInput(popupTable) end

--114
--Object-Free - PrepareWaitObjectChange(light_userdata:object[, int:change level threshold]): true or nil
--ToDo

---
---@param object lightuserdata
---@param changeLevelThreshold? integer
---@return boolean|nil
function PrepareWaitObjectChange(object, changeLevelThreshold) end

--115
--Object-Free - Printf(string:format ...): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_printf/en/1.9)
---
---@generic T
---@param format string The string input is printed in the Command Line History and the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function Printf(format, ...) end

--116
--Object-Free - Programmer(nothing): light_userdata:handle
--ToDo

---
---@return lightuserdata # Handle to the current users programmer object
function Programmer() end

--117
--Object-Free - ProgrammerPart(nothing): light_userdata:handle
--ToDo - Update Needed

---
---@return lightuserdata # Handle to the current users programmer part object
function ProgrammerPart() end

--118
--Object-Free - Pult(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_pult/en/1.9)
--- Root().GraphicsRoot.PultCollect["Pult 1"]
---
---@return lightuserdata # Handle to the Pult Collect object.
function Pult() end

--119
--Object-Free - RefreshLibrary(light userdata: Handle): 
--ToDo

---
---@param handle lightuserdata
function RefreshLibrary(handle) end

--120
--Object-Free - ReleaseType(nothing): string::release type
--ToDo

---
---
---
---@return string # The string indicates the release type
function ReleaseType() end

--121
--Object-Free - RemoteCommand(string:ip, string:command): bool: success
--ToDo

---
---@param ipAddress string
---@param command string
---@return boolean
function RemoteCommand(ipAddress, command) end

--122
--Object-Free - Root(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_root/en/1.9)
---
---@return lightuserdata # Handle to the Root object.
function Root() end

--123
--Object-Free - SaveExecConfig(light_userdata: exec handle): nothing
--ToDo

---
---@param handle lightuserdata
function SaveExecConfig(handle) end

--124
--Object-Free - SelectedSequence(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_selectedsequence/en/1.9)
---
---@return lightuserdata # Returns the handle to this users currently selected sequence.
function SelectedSequence() end

--125
--Object-Free - Selection(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_selection/en/1.9)
---
---@return lightuserdata # Returns the handle to the object list containing this users currently selected (sub)fixtures.
function Selection() end

--126
--Object-Free - SelectionComponentX(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo

---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentX() end

--127
--Object-Free - SelectionComponentY(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo

---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentY() end

--128
--Object-Free - SelectionComponentZ(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo

---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentZ() end

--129
--Object-Free - SelectionCount(nothing): int: amount of selected subfixtures

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_selectioncount/en/1.9)
---
---@return integer # Returns the amount of currently selected (sub)fixtures.
function SelectionCount() end

--130
--Object-Free - SelectionFirst(nothing): int:first subfixture index, int:x, int:y, int:z

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_selectionfirst/en/1.9)
---
---@return integer subFixtureIndex The returned index is the patch index of the first fixture in the current selection. It is not the FID or CID. The index is 0-based.
---@return integer x This is the fixtures position on the X-axis in the selection grid. The selection grid is 0-based.
---@return integer y This is the fixtures position on the Y-axis in the selection grid. The selection grid is 0-based.
---@return integer z This is the fixtures position on the Z-axis in the selection grid. The selection grid is 0-based.
function SelectionFirst() end

--131
--Object-Free - SelectionNext(int:current subfixture index): int: next subfixture index, int:x, int:y, int:z

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_selectionnext/en/1.9)
---
---@return integer subFixtureIndex The returned index is the patch index of the next fixture in the current selection. It is not the FID or CID. The index is 0-based.
---@return integer x This is the fixtures position on the X-axis in the selection grid. The selection grid is 0-based.
---@return integer y This is the fixtures position on the Y-axis in the selection grid. The selection grid is 0-based.
---@return integer z This is the fixtures position on the Z-axis in the selection grid. The selection grid is 0-based.
function SelectionNext() end

--132
--Object-Free - SelectionNotifyBegin(ligh_userdata:associated context): 
--ToDo

---
---@param associatedContext lightuserdata
function SelectionNotifyBegin(associatedContext) end

--133
--Object-Free - SelectionNotifyEnd(ligh_userdata:associated context): 
--ToDo

---
---@param associatedContext lightuserdata
function SelectionNotifyEnd(associatedContext) end

--134
--Object-Free - SelectionNotifyObject(ligh_userdata:object to notify about): 
--ToDo

---
---@param notifyObject lightuserdata
function SelectionNotifyObject(notifyObject) end

--135
--Object-Free - SerialNumber(nothing): string::SerialNumber

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_serialnumber/en/1.9)
---
---@return string # The returned string is the Serial number of the grandMA3 hardware or grandMA3 onPC.
function SerialNumber() end

--136
--Object-Free - SetBlockInput(boolean:block): nothing
--ToDo

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_setblockinput/en/1.9)
---
---@param block boolean If "true", then the USB connected keyboard and mouse input is blocked. If "false", then the USB input is unblocked.
function SetBlockInput(block) end

--137
--Object-Free - SetColor(string:colormodel(RGB,xyY,Lab,XYZ,HSB), double:tripel1, double:tripel2, double:tripel3, double: Brightness, double: Quality, bool: const_Brightness): int:flag
--ToDo

---
---@param colormodel string
---|"'RGB'"  # 
---|"'xyY'" # 
---|"'Lab'" #
---|"'XYZ'" #
---|"'HSB'" # 
---@param tripel1 number
---@param tripel2 number
---@param tripel3 number
---@param brightness number
---@param quality number
---@param constBrightness boolean
---@return integer
function SetColor(colormodel, tripel1, tripel2, tripel3, brightness, quality, constBrightness) end

--138
--Object-Free - SetLED(light_userdata:usb device object handle,table:led_values): nothing
--ToDo

---
---@param usbDeviceObject lightuserdata
---@param ledValue table
function SetLED(usbDeviceObject, ledValue) end

--139
--Object-Free - SetProgPhaser(number:uichannelindex, {[abs_preset:<light_userdata: handle>][rel_preset:<light_userdata: handle>][fade:<val>][delay:<val>][speed:<Hz>][phase:<val>][measure:<val>][gridpos:<val>]   {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}*}): nothing
--ToDo

---
---@param uiChannelIndex integer
---@param phaserValueTable table
function SetProgPhaser(uiChannelIndex, phaserValueTable) end

--140
--Object-Free - SetProgPhaserValue(number:uichannelindex, number:step, {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}): nothing
--ToDo

---
---@param uiChannelIndex integer
---@param step integer
---@param phaserValueTable table
function SetProgPhaserValue(uiChannelIndex, step, phaserValueTable) end

--141
--Object-Free - SetProgress(light_userdate:handle, integer:value): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_setprogress/en/1.9)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param value integer The desired value indicating the current status or position of the progress bar.
function SetProgress(handle, value) end

--142
--Object-Free - SetProgressRange(light_userdate:handle, integer:start, integer:end): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_setprogressrange/en/1.9)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param rangeStart integer The start value for the progress bar's range.
---@param rangeEnd integer The end value for the progress bar's range.
function SetProgressRange(handle, rangeStart, rangeEnd) end

--143
--Object-Free - SetProgressText(light_userdate:handle, string:text): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_setprogresstext/en/1.9)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param text string The text string to be displayed on the progress bar.
function SetProgressText(handle, text) end

--144
--Object-Free - SetVar(light userdata: variables, string:varname,value): bool:success

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_setvar/en/1.9)
---
---@param variableSet lightuserdata The handle to a variable set (Global or User).
---@param variableName string The name of the variable.
---@param value string|number The value given to the variable.
---@return boolean # The returned boolean indicate if the vairable is set (True) or not (False)
function SetVar(variableSet, variableName, value) end

--145
--Object-Free - ShowData(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_showdata/en/1.9)
--- Root().ShowData
---
---@return lightuserdata # Handle to the ShowData object.
function ShowData() end

--146
--Object-Free - ShowSettings(nothing): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_showsettings/en/1.9)
--- Root().ShowData.ShowSettings
---
---@return lightuserdata # Handle to the ShowSettings object.
function ShowSettings() end

--147
--Object-Free - StartProgress(string:name): light_userdate:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_startprogress/en/1.9)
---
---@param name string The string is the title for the progress bar.
---@return lightuserdata # Handle to the progrees bar.
function StartProgress(name) end

--148
--Object-Free - StopProgress(light_userdate:handle): nothing

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_stopprogress/en/1.9)
---
---@param handle lightuserdata The handle for the progress bar to be stopped.
function StopProgress(handle) end

--149
--Object-Free - StrToHandle(string: handle in H#... format): light_userdata:handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_strtohandle/en/1.9)
---
---@param handleInStringFormat string The string should be a handle number in a hexadecimal format.
---@return lightuserdata # The returned handle based on the string.
function StrToHandle(handleInStringFormat) end

--150
--Object-Free - SyncFS(nothing): nothing
--ToDo

---
function SyncFS() end

--151
--Object-Free - TextInput([string:title [, string:value [, integer:x [, integer:y]]]]): string:value

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_textinput/en/1.9)
---
---@param title? string|nil This string is the title for the pop-up. The title bar has a default "Edit" text at the beginning of the title that cannot be removed.
---@param value? string|nil This string is the text already in the input field - can be used to provide user guidance.
---@param x? integer|nil This integer defines a position on the x-axis where the pop-up should appear (on all screens). "0" is on the left side of the screen. Nil or undefined is centered.
---@param y? integer This integer defines a position on the y-axis where the pop-up should appear (on all screens). "0" is at the top of the screen. Nil or undefined is centered.
---@return string # The returned user input.
function TextInput(title, value, x, y) end

--152
--Object-Free - Time(nothing): number:time

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_time/en/1.9)
---
---@return number # Returns the "online time" in seconds.
function Time() end

--153
--Object-Free - Timer(function:name, number:delaytime, number:max_count, [function:cleanup], [light_userdata:context object]): nothing
--ToDo - Update needed

---
---@param name function
---@param delayTime number
---@param maxCount number
---@param cleanup? function|nil
---@param contextObject? lightuserdata
function Timer(name, delayTime, maxCount, cleanup, contextObject) end

--154
--Object-Free - ToAddr(light_userdata:handle): string:address
--ToDo

---
---@param handle lightuserdata
---@return string
function ToAddr(handle) end

--155
--Object-Free - Touch(integer: displayIndex, string:type('press','move','release'), integer:touchId, integer:absX, integer:absY): 
--ToDo

---
---@param displayIndex integer
---@param types string
---|"'press'" #
---|"'move'" #
---|"'release'" #
---@param touchId integer
---@param absX integer
---@param absY integer
function Touch(displayIndex, types, touchId, absX, absY) end

--156
--Object-Free - TouchObj(nothing): light_userdata:touch object handle

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_touchobj/en/1.9)
--- Root().GraphicsRoot.PultCollect["Pult 1"].Devices["Touch 2"]
---
---@return lightuserdata # The handle to the touch object.
function TouchObj() end

--157
--Object-Free - Unhook(function:callback): nothing
--ToDo

---
---@param callback function
function Unhook(callback) end

--158
--Object-Free - UnhookMultiple(function:callback(can be nil), light_userdata:handle to target(can be nil), light_userdata: handle to context (can be nil)): integer: amount of removed hooks
--ToDo

---
---@param callback function|nil
---@param handleTarget lightuserdata|nil
---@param handleContext lightuserdata|nil
---@return integer # The amount of removed hooks
function UnhookMultiple(callback, handleTarget, handleContext) end

--159
--Object-Free - UserVars(): light userdata: user variables

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_uservars/en/1.9)
---
---@return lightuserdata # Returns the handle to the user variable set  .
function UserVars() end

--160
--Object-Free - Version(nothing): string::version

---
---[Online Manual Page](https://help2.malighting.com/Page/grandMA3/lua_version/en/1.9)
---
---@return string # The returned string indicates the version number of the software.
function Version() end

--161
--Object-Free - WaitModal([number:seconds to wait]): handle to modal overlay or nil on failure(timeout)
--ToDo

---
---@param seconds number
---@return lightuserdata|nil # Handle to modal overlay or nil on failure or timeout 
function WaitModal(seconds) end

--162
--Object-Free - WaitObjectDelete(light_userdata:handle to UIObject[, number:seconds to wait]): boolean:true on success, nil on timeout
--ToDo

---
---@param handleToUIObject lightuserdata
---@param secondsWait number
---@return boolean|nil # Return True if success and nil on timeout
function WaitObjectDelete(handleToUIObject, secondsWait) end