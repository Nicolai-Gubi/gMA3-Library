---@meta

--
-- These are all the object-free api function in the grandMA3 system. 
-- some are not properly described yet in this definition.
--
-- This list is from version 2.1.1.1
--
--

--- This table is used for the "AddFixtures" function.
---@class tableFixture
---@field mode lightuserdata Handle to DMX mode
---@field amount integer
---@field undo? string Undo text
---@field parent? lightuserdata Handle to parent fixture
---@field insert_index? integer
---@field idtype? string
---@field cid? string
---@field fid? string
---@field name? string
---@field layer? string
---@field class? string
---@field patch? table Array of up to 8 addresses as strings

--001
--Object-Free - AddFixtures({'mode'=light_userdata:dmx_mode, 'amount'=integer:amount[, 'undo'=string:undo_text][, 'parent'=light_userdata:handle][, 'insert_index'=integer:value][, 'idtype'=string:idtype][, 'cid'=string:cid][, 'fid'=string:fid][, 'name'=string:name][, 'layer'=string:layer][, 'class'=string:class][, 'patch'={table 1..8: string:address}]}): boolean:success or nothing

---
---[Online Manual Page]https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_addfixtures.html
---
---@param fixtureTable tableFixture
---@return boolean|nil # Returns true if success. return nil is failure.
function AddFixtures(fixtureTable) end

--002
--Object-Free - AddonVars(string:addon_name): light_userdata:addon_variables

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_addonvars.html)
---
---@param addon_name string The name of the Addon.
---@return lightuserdata # Returns the handle to the addon variable set.
function AddonVars(addon_name) end


--003
--Object-Free - BuildDetails(nothing): table:build_details

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
---@param dmxMode lightuserdata
---@param dmxAddress string
---@param count? integer|nil
---@param breakIndex? integer
---@return boolean # True = No collision, False = Collision.
function CheckDMXCollision(dmxMode, dmxAddress, count, breakIndex) end

--005
--Object-Free - CheckFIDCollision(integer:fid[, integer:count[, integer:type]]): boolean:no_collision_found

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_checkfidcollision.html)
---
---@param FID integer
---@param count? integer|nil
---@param type? integer
---@return boolean # True = No collision, False = collision.
function CheckFIDCollision(FID, count, type) end

--006
--Object-Free - ClassExists(string:class_name): boolean:result

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_classexists.html)
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
---@return nil
function CloseAllOverlays() end

--008
--Object-Free - CloseUndo(light_userdata:undo_handle): boolean:closed (true if was closed, false - if it's still in use)

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_closeundo.html)
---
---@param undoHandle lightuserdata This should be a handle for an existing undo object.
---@return boolean # Returns true if the undo object was closed, false if it could not be closed.
function CloseUndo(undoHandle) end

--009
--Object-Free - Cmd(string:formatted_command[ ,light_userdata:undo], ...): string:command_execution_result ('Ok', 'Syntax Error', 'Illegal Command', ...)

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_cmd.html)
---
---@generic T
---@param format string The string input is printed in the Command Line History and the System Monitor. It allows for format specifiers.
---@param undo? lightuserdata Handle to an undo object.
---@param ...? T Additional arguments.
---@return string # The returned string indicates the command execution result.
function Cmd(format, undo, ...) end

--010
--Object-Free - CmdIndirect(string:command[, light_userdata:undo[, light_userdata:target]]): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_cmdindirect.html)
---
---@param cmd string Command to be executed.
---@param undo? lightuserdata|nil Handle to an undo object.
---@param target? lightuserdata Handle to a display object.
function CmdIndirect(cmd, undo, target) end

--011
--Object-Free - CmdIndirectWait(string:command[, light_userdata:undo[, light_userdata:target]]): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_cmdindirectwait.html)
---
---@param cmd string Command to be executed.
---@param undo? lightuserdata|nil Handle to an undo object.
---@param target? lightuserdata Handle to a display object.
function CmdIndirectWait(cmd, undo, target) end

--012
--Object-Free - CmdObj(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_cmdobj.html)
---
---@return lightuserdata # Handle to the command object.
function CmdObj() end

--013
--Object-Free - ColMeasureDeviceDarkCalibrate(nothing): integer:flag
-- Internal use only

---@return integer
function ColMeasureDeviceDarkCalibrate() end

--014
--Object-Free - ColMeasureDeviceDoMeasurement(nothing): table:values
-- Internal use only

---@return table # The returned table contains values.
function ColMeasureDeviceDoMeasurement() end

--015
--Object-Free - ConfigTable(nothing): table:config_details

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_configtable.html)
---
---@return table # Returns a Key-Value table with the configuration details.
function ConfigTable() end

--016
--Object-Free - Confirm([string:title [,string:message [,integer:display_index [,boolean:showCancel]]]]): boolean:result

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_confirm.html)
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
---
---[Online Manual Page]()
---
---@param path string
---@return boolean
function CreateDirectoryRecursive(path) end

--018
--Object-Free - CreateMultiPatch({light_userdata:fixture_handles}, integer:count[ ,string:undo_text]): integer:amount_of_multi-patch_fixtures_created
--ToDo
---
---[Online Manual Page]()
---
---@param fixtureHandleArray any
---@param count integer
---@param undoText? string
---@return integer # The amount of fixtures created
function CreateMultiPatch(fixtureHandleArray, count, undoText) end

--019
--Object-Free - CreateUndo(string:undo_text): light_userdata:undo_handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_createundo.html)
---
---@param undoText string Identifying name of the undo object.
---@return lightuserdata # Handle for the undo object.
function CreateUndo(undoText) end

--020
--Object-Free - CurrentEnvironment(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_currentenvironment.html)
---
---@return lightuserdata # Handle to the currently active environment object.
function CurrentEnvironment() end

--021
--Object-Free - CurrentExecPage(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_currentexecpage.html)
---
---@return lightuserdata # Handle to the currently executor page.
function CurrentExecPage() end

--022
--Object-Free - CurrentProfile(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_currentprofile.html)
---
---@return lightuserdata # Handle to the currently active profile object.
function CurrentProfile() end

--023
--Object-Free - CurrentScreenConfig(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_currentscreenconfig.html)
---
---@return lightuserdata # Handle to the current users screen configuration.
function CurrentScreenConfig() end

--024
--Object-Free - CurrentUser(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_currentuser.html)
---
---@return lightuserdata # Handle to the currently active user object.
function CurrentUser() end

--025
--Object-Free - DataPool(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_datapool.html)
---
---@return lightuserdata # Handle to the currently active DataPool object.
function DataPool() end

--026
--Object-Free - DefaultDisplayPositions(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_defaultdisplaypositions.html)
---
---@return lightuserdata # Handle to the DefaultDisplayPositions object.
function DefaultDisplayPositions() end

--027
--Object-Free - DelVar(light_userdata:variables, string:varname): boolean:success

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_delvar.html)
---
---@param variableSet lightuserdata Handle to a set of variables (Global or User).
---@param variableName string Name of the variable to be deleted.
---@return boolean # True if the variable was deleted - False if it could not be deleted.
function DelVar(variableSet, variableName) end

--028
--Object-Free - DeskLocked(nothing): boolean:desk_is_locked

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_desklocked.html)
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
--Object-Free - DevMode3d(nothing): string:devmode3d
--ToDo
---
---[Online Manual Page]()
---
---@return string 
function DevMode3d() end

--031
--Object-Free - DirList(string:path[ ,string:filter]): table of {name:string, size:int, time:int}

---
---[Online Manual Page]()
---
---@param path string
---@param filters? string
---@return table # Array of objects
function DirList(path, filters) end

--032
--Object-Free - DrawPointer(integer:display_index, {x,y}:position[, number:duration]): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_drawpointer.html)
---
---@param displayIndex integer This integer needs to an index for a display.
---@param position table This kay-value table needs to have 'x' and 'y' keys with values indicating a position on the display.
---@param duration? number The duration is in milliseconds. It it not provided, then the pointer stays visible.
function DrawPointer(displayIndex, position, duration) end

--033
--Object-Free - DumpAllHooks(nothing): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_dumpallhooks.html)
---
--- Prints a list of all hooks in the system.
function DumpAllHooks() end

--034
--Object-Free - Echo(string:formatted_command ...): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_echo.html)
---
---@generic T
---@param format string The string input is printed in the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function Echo(format, ...) end

--035
--Object-Free - ErrEcho(string:formatted_command ...): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_errecho.html)
---
---@generic T
---@param format string The string input is printed in the System Monitor in red. It allows for format specifiers.
---@param ...? T Additional arguments.
function ErrEcho(format, ...) end

--036
--Object-Free - ErrPrintf(string:formatted_command ...): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_errprintf.html)
---
---@generic T
---@param format string The string input is printed in red in the Command Line History and the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function ErrPrintf(format, ...) end

--037
--Object-Free - Export(string:file_name, table:export_data): boolean:success

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_export.html)
---
---@param filename string The filename for the exported file (XML format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function Export(filename, exportData) end

--038
--Object-Free - ExportCSV(string:file_name, table:export_data): boolean:success

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_exportcsv.html)
---NOTE: The CSV is not formattet correctly. All data is in their own column in a single row.
---
---@param filename string The filename for the exported file (CSV format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function ExportCSV(filename, exportData) end

--039
--Object-Free - ExportJson(string:file_name, table:export_data): boolean:success

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_exportjson.html)
---NOTE: It does not format the exportData table in a proper JSON format. 
---
---@param filename string The filename for the exported file (JSON format) including the path.
---@param exportData table A table containing the data to be exported.
---@return boolean # True if the data was exported - False if it could not be exported.
function ExportJson(filename, exportData) end

--040
--Object-Free - FileExists(string:path): boolean:result

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_fileexists.html)
---
---@param path string The string should be contain the path and filename for the file.
---@return boolean # The 
function FileExists(path) end

--041
--Object-Free - FindBestDMXPatchAddr(light_userdata:patch, integer:starting_address, integer:footprint): integer:absolute_address

---
---[Online Manual Page]()
---
---@param patch lightuserdata
---@param startingAddress integer
---@param footprint integer
---@return integer # The absolute DMX address
function FindBestDMXPatchAddr(patch, startingAddress, footprint) end

--042
--Object-Free - FindBestFocus([light_userdata:handle]): nothing

---
---[Online Manual Page]()
---
---@param handle? lightuserdata
function FindBestFocus(handle) end

--043
--Object-Free - FindNextFocus([bool:backwards(false)[, int(Focus::Reason):reason(UserTabKey)]]): nothing

---
---[Online Manual Page]()
---
---@param backwards? boolean|nil 
---@param reason? integer
function FindNextFocus(backwards, reason) end

--044
--Object-Free - FindTexture(string:texture name): light userdata:handle to texture found

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_findtexture.html)
---
---@param textureName string Name of the UI texture object/icon.
---@return lightuserdata # Handle to texture matching the string input
function FindTexture(textureName) end

--045
--Object-Free - FirstDmxModeFixture(light_userdata:dmxmode): light_userdata:fixture

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_firstdmxmodefixture.html)
---
---@param dmxMode lightuserdata
---@return lightuserdata # Handle to the first fixture matching the DMX Mode.
function FirstDmxModeFixture(dmxMode) end

--046
--Object-Free - FixtureType(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_fixturetype.html)
---
---@return lightuserdata 
function FixtureType() end

--047
--Object-Free - FromAddr(string:address[, light_userdata:base_handle]): light_userdata:handl

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_fromaddr.html)
---
---@param address string A string identifying an object. It can be a numbered or named address.
---@param baseHandle? lightuserdata This optional handle can specify a different base location than "Root". It still needs to be a base location in the address path from the root to the object.
---@return lightuserdata The handle for the addressed object.
function FromAddr(address, baseHandle) end

--048
--Object-free - FSExtendedModeHasDots(light_userdata:handle to UIGrid (or derived), {r, c}:cell): boolean

---
---
---@param UIGridHandle lightuserdata
---@param CellTable table
---@return boolean
function FSExtendedModeHasDots(UIGridHandle, CellTable) end

--049
---Object-Free - GetApiDescriptor(nothing): table of {string:function_name, string:arguments, string:return_values}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getapidescriptor.html)
---
---@return table # A table with the factory description of the object free functions.
function GetApiDescriptor() end

--050
--Object-Free - GetAttributeByUIChannel(integer:ui channel index): light_userdata:reference_to_attribute

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getattributebyuichannel.html)
---
---@param uiChannelIndex integer This index integer identifies a UI Channel (Parameter List).
---@return lightuserdata|nil # Handle to the attribute.
function GetAttributeByUIChannel(uiChannelIndex) end

--051
---Object-Free - GetAttributeColumnId(light_userdata:handle, light_userdata:attribute): integer:column_id
---
---@param handle lightuserdata
---@param attribute lightuserdata
---@return integer
function GetAttributeColumnId(handle, attribute) end

--052
--Object-Free - GetAttributeCount(nothing): integer:attribute_count

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getattributecount.html)
---
---@return integer # The amount of attributes.
function GetAttributeCount() end

--053
--Object-Free - GetAttributeIndex(string:attribute_name): integer:attribute_index

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getattributeindex.html)
---
---@param attributeName string The string matching the attribute system name.
---@return integer # The returned integer is the index of the attribute.
function GetAttributeIndex(attributeName) end

--054
--Object-Free - GetButton(light_userdata:usb_device_object_handle): table of boolean:state

---
---Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getbutton.html)
---
---@param usbDeviceHandle lightuserdata Handle to an USB device
---@return table # A table of 512 booleans indicating if buttons are pressed
function GetButton(usbDeviceHandle) end

--055
--Object-Free - GetChannelFunction(integer:ui_channel_index, integer:attribute_index): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getchannelfunction.html)
---
---@param uiChannelIndex integer The index for a specific UI Channel (Parameter List).
---@param attributeIndex integer The index for an attribute (Attribute Definitions).
---@return lightuserdata # Handle to the channel function.
function GetChannelFunction(uiChannelIndex, attributeIndex) end

--056
--Object-Free - GetChannelFunctionIndex(integer:ui_channel_index, integer:attribute_index): integer:channel_function_index

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getchannelfunctionindex.html)
---
---@param uiChannelIndex integer The index for a specific UI Channel (Parameter List).
---@param attributeIndex integer The index for an attribute (Attribute Definitions).
---@return integer # Index number of the channel function.
function GetChannelFunctionIndex(uiChannelIndex, attributeIndex) end

--057
--Object-Free - GetClassDerivationLevel(string:class_name): integer:result or nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getclassderivationlevel.html)
---
---@param className string This string should be the name of an existing class.
---@return integer # The returned integer indicates the class derivation level.
function GetClassDerivationLevel(className) end

--058
--Object-Free - GetCurrentCue(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getcurrentcue.html)
---
---@return lightuserdata # The handle to the last activated cue in the selected sequence. 
function GetCurrentCue() end

--059
--Object-Free - GetDebugFPS(nothing): float:fps
--ToDo
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getdebugfps.html)
---
---@return number # The returned number is a float indicating the frames per second for the displays.
function GetDebugFPS() end

--060
--Object-Free - GetDisplayByIndex(integer:display_index): light_userdata:display_handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getdisplaybyindex.html)
---
---@param displayIndex integer The integer needs to be an index number for one of the displays.
---@return lightuserdata # Handle to the display matching the index.
function GetDisplayByIndex(displayIndex) end

--061
--Object-Free - GetDisplayCollect(nothing): light_userdata:handle to DisplayCollect

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getdisplaycollect.html)
---
---Root().GraphicsRoot.PultCollect["Pult 1"].DisplayCollect
---@return lightuserdata # Handle to the Display Collect object.
function GetDisplayCollect() end

--062
--Object-Free - GetDMXUniverse(integer:universe[ ,boolean:modePercent]): {integer:dmx_values}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getdmxuniverse.html)
---
---@param universe integer The DMX universe [1-1024].
---@param modePercent? boolean This bool indicates if the returned table is in DMX value [0-255] (False - default) or percent [0-100] (True). 
---@return table|nil # The returned table is all the DMX adresses in the provided universe and the current DMX Value in percent or DMX value. Nil if the universe is not granted.
function GetDMXUniverse(universe, modePercent) end

--063
--Object-Free - GetDMXValue(integer:address[ ,integer:universe, boolean:mode_percent]): integer:dmx_value

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getdmxvalue.html)
---
---@param address integer The DMX address in absolute address or if a universe is provided, then from 1 to 512.
---@param universe? integer The DMX universe [1-1024].
---@param modePercent? boolean This bool indicates if the returned integer is in DMX value [0-255] (False - default) or percent [0-100] (True). 
---@return integer|nil # The DMX value of the provided DMX address in DMX or percent. Nil if the universe is not granted.
function GetDMXValue(address, universe, modePercent) end

--064
--Object-Free - GetExecutor(integer:executor): light_userdata:executor, light_userdata:page

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getexecutor.html)
---
---@param execNumber integer The integer for an executor.
---@return lightuserdata executorHandle Handle to the executor.
---@return lightuserdata executorPage Handle to the current executor page.
function GetExecutor(execNumber) end

--065
--Object-Free - GetFocus(nothing): light_userdata:display_handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getfocus.html)
---
---@return lightuserdata # Handle to the object that currently has focus.
function GetFocus() end

--066
--Object-Free - GetFocusDisplay(nothing): light_userdata:display_handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getfocusdisplay.html)
---
---@return lightuserdata # Handle to display that currently got focus.
function GetFocusDisplay() end

--067
--Object-Free - GetObjApiDescriptor(nothing): table of {string:function_name, string:arguments, string:return_values}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getobjapidescriptor.html)
---
---@return table # A table with the factory description of the object functions.
function GetObjApiDescriptor() end

--068
---Object-Free - GetObject(string:address): light_userdata:handle
---
---@param address lightuserdata
---@return lightuserdata
function GetObject(address) end

--069
--Object-Free - GetPath(string:path_type or integer:path_type(Enums.PathType)[ ,boolean:create]): string:path

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getpath.html)
---
---@param pathType string|integer The string should indicate a folder name. If integer, then it should be an indicating index number from 'Enum.PathType'.
---@param create? boolean This boolean indicates if the folder should be created (True) if it does not exists - only works with string path type.
---@return string # The returned string is the *first found* full path related to the provided argument.
function GetPath(pathType, create) end

--070
--Object-Free - GetPathOverrideFor(string:path type or integer:path_type(Enums.PathType), string:path[ ,boolean:create]): string:overwritten_path

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getpathoverridefor.html)
---
---@param pathType string|integer The string should indicate a folder name. If integer, then it should be an indicating index number from 'Enum.PathType'.
---@param path string The base path in a string format.
---@param create? boolean This boolean indicates if the folder should be created (True) if it does not exists - only works with string path type.
---@return string # The returned string is the *first found* full path related to the provided argument.
function GetPathOverrideFor(pathType, path, create) end

--071
--Object-Free - GetPathSeparator(nothing): string:seperator

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getpathseparater.html)
---
---@return string # The returned string is '/'(Linux) or '\\'(Windows) depending on the operating system.
function GetPathSeparator() end

--072
--Object-Free - GetPathType(light_userdata:target_object[ ,integer:content_type (Enums.PathContentType)]): string:path_type_name

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getpathtype.html)
---
---@param targetObject lightuserdata This handle should be for the object for which the path is needed.
---@param contentType? integer This integer must be one of possible integers in the enums.PathContenType. 0 = System path, 1 = User path, or 2 = Mixed path 
---@return string # This is the returned path
function GetPathType(targetObject, contentType) end

--073
--Object-Free - GetPresetData(light_userdata:preset_handle[, boolean:phasers_only(default=false)[, boolean:by_fixtures(default=true)]]): table:phaser_data

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getpresetdata.html)
---
---@param presetHandle lightuserdata This should be a handle to a preset
---@param phasersOnly? boolean If this is true then the returned table only contains Phaser values. Default is False
---@param byFixtures? boolean If this is True, then htere is an extra table object. This object contains the same returned table but the keys are the FID instead of the UI Channel Index
---@return table # The returned table contains information about the preset. It has multiple levels of tables
function GetPresetData(presetHandle, phasersOnly, byFixtures) end

--074
--Object-Free - GetProgPhaser(number:uichannelindex, bool:phaser_only): {[abs_preset:<light_userdata: handle>][rel_preset:<light_userdata: handle>][fade:<val>][delay:<val>][speed:<Hz>][phase:<val>][measure:<val>][gridpos:<val>][mask_active_phaser:<bool>][mask_active_value:<bool>][mask_individual:<bool>] {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}*}
--ToDo

---
---[Online Manual Page]()
---
---@param uiChannelIndex number
---@param phaserOnly boolean
---@return table
function GetProgPhaser(uiChannelIndex, phaserOnly) end

--075
--Object-Free - GetProgPhaserValue(number:uichannelindex, number:step): {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}
--ToDo

---
---[Online Manual Page]()
---
---@param uiChannelIndex number
---@param step number
---@return table
function GetProgPhaserValue (uiChannelIndex, step) end

--076
--Object-Free - GetPropertyColumnId(light_userdata:handle, string:propertyname): LuaInteger
--ToDo

---
---[Online Manual Page]()
---
---@param handle lightuserdata
---@param propertyName string
---@return integer
function GetPropertyColumnId(handle, propertyName) end

--077
--Object-Free - GetRemoteVideoInfo(nothing): integer:wingID, boolean:isExtension
--ToDo

---
---[Online Manual Page]()
---
---@return integer # The Wing ID number.
---@return boolean # 
function GetRemoteVideoInfo() end

--078
--Object-Free - GetRTChannel(integer:rt_channel_index): table:rt_channel_descriptor

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getrtchannel.html)
---
---@param rtChannelIndex integer The integer should be the index number for an RT Channel.
---@return table|nil # The returned table contains all relevant information about the RT channel. Nil is returned if the index doesn't match an RT channel.
function GetRTChannel(rtChannelIndex) end

--079
--Object-Free - GetRTChannelCount(nothing): integer:rt_channel_count

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getrtchannelcount.html)
---
---@return integer  # The amount of RT channels.
function GetRTChannelCount() end

--080
--Object-Free - GetRTChannels(integer:fixture index or light_userdata: reference_to_fixture_object[, boolean:return_as_handles]): {integer:rt_channels} or {light_userdata:rt_channels}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getrtchannels.html)
---
---@param fixtureID integer|lightuserdata The integer should be the index number for a (sub)fixture. The handle (lightuserdata) should relate to a (sub)fixture object.
---@param asHandles boolean If True, then the returned table contains handles for RT Channel objects. If False then the returned table contains integers index values to the RT Channel objects.
---@return table|nil # The returned table can be a list of RT Channel indexes or handles to the same RT Channels. Nil is returned if the RT channel is not found.
function GetRTChannels(fixtureID, asHandles) end

--081
--Object-Free - GetSample(string:type('MEMORY', 'CPU', 'CPUTEMP', 'GPUTEMP', 'SYSTEMP', 'FANRPM')): integer:current_value_in_percent

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getsample.html)
---
---@param sampleType string The string should be one of the valid input types.
---|"'MEMORY'"  # 
---|"'CPU'" # 
---|"'CPUTEMP'" # 
---|"'GPUTEMP'" # 
---|"'SYSTEMP'" # 
---|"'FANRPM'" # 
---@return number # Current value in percent.
function GetSample(sampleType) end

--082
--Object-Free - GetScreenContent(light_userdata:handle to ScreenConfig): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getscreencontent.html)
---
---@param screenConfig lightuserdata Handle to a screen configuration
---@return lightuserdata # Handle to the screen content
function GetScreenContent(screenConfig) end

--083
--Object-Free - GetSelectedAttribute(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getselectedattribute.html)
---
---@return lightuserdata # Handle to the currently selected attribute.
function GetSelectedAttribute()end

--084
--Object-Free - GetShowFileStatus(nothing): string:showfile_status

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getshowfilestatus.html)
---
---@return Enums.ShowFileStatus # The returned string indicate the status of the showfile - i.e. 'ShowDownloaded'.
function GetShowFileStatus() end

--085
--Object-Free - GetSubfixture(integer:subfixture_index): light_userdata:subfixture

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getsubfixture.html)
---
---@param subfixtureIndex integer The integer shoudl be the patch index number for a fixture.
---@return lightuserdata|nil # Handle to the subfixture object. Nil is returned if the index does not match a subfixture.
function GetSubfixture(subfixtureIndex) end

--086
--Object-Free - GetSubfixtureCount(nothing): integer:subfixture_count

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getsubfixturecount.html)
---
---@return integer # The returned integer number represents the total amount of patched fixtures on all the stages in the show file.
function GetSubfixtureCount() end

--087
--Object-Free - GetTokenName(string:shortName): string:full_name

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_gettokenname.html)
---
---@param shortName string This is the short version of the keyword, e.g. 'Seq'
---@return  string # The returned string is the full keyword
function GetTokenName(shortName) end

--088
--Object-Free - GetTokenNameByIndex(integer:token_index): string:full_name

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_gettokennamebyindex.html)
---
---@param tokenIndex integer The index identifies a token in a build-in table
---@return string # The returned string is the keyword matching the index
function GetTokenNameByIndex(tokenIndex) end

--089
--Object-Free - GetTopModal(nothing): light userdata:handle to top modal overlay

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_gettopmodal.html)
---
---@return lightuserdata # Handle to the top model overlay UI object
function GetTopModal() end

--090
--Object-Free - GetTopOverlay(integer:display_index): light userdata:handle to top overlay on the display

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_gettopoverlay.html)
---
---@param displayIndex integer
---@return lightuserdata # Handle to the top overlay on the display matching the index
function GetTopOverlay(displayIndex) end

--091
--Object-Free - GetUIChannel(integer:ui_channel_index or light_userdata: subfixture_reference, integer:attribute_index or string:attribute_name): table:ui_channel_descriptor
--ToDo

---
---[Online Manual Page]()
---
---@param uiChannel integer|lightuserdata An integer for an UI Channel index or a handle referencing a subfixture object 
---@param attribute integer|string An integer or string indicating an attribute
---@return table|nil
function GetUIChannel(uiChannel, attribute) end

--092
--Object-Free - GetUIChannelCount(nothing): integer:ui_channel_count

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getuichannelcount.html)
---
---@return integer # The intiger indicates the amount of UI Channels.
function GetUIChannelCount() end

--093
--Object-Free - GetUIChannelIndex(integer:subfixture_index, integer:attribute_index): integer:ui_channel_index

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getuichannelindex.html)
---
---@param subfixtureIndex integer The integer identifying the subfixture.
---@param attributeIndex integer The integer identifying the attribute (Attribute Definitions).
---@return integer # The index to the UI Channel.
function GetUIChannelIndex(subfixtureIndex, attributeIndex) end

--094
--Object-Free - GetUIChannels(integer:subfixture_index or light_userdata: subfixture_handle[, boolean:return_as_handles]): {integer:ui_channels} or {light_userdata:ui_channels}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getuichannels.html)
---
---@param subfixture integer|lightuserdata The integer or handle identifying the subfixture.
---@param asHandles? boolean This indicates if the returned table should contain handles (True) or index integers (False - default).
---@return table|nil # The returned table contains indexes or handles (based on the optional boolean) of the UI channels for the subfixture. Nil is returned of the subfixture is not identified.
function GetUIChannels(subfixture, asHandles) end

--095
--Object-Free - GetUIObjectAtPosition(integer:display_index, {x,y}:position): light_userdata:handle to UI object or nil

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getuiobjectatposition.html)
--- 
---@param displayIndex integer This is the display index number
---@param position table --{x,y} This table should have two named objects "x" and "y" indicating the position on the display
---@return lightuserdata|nil # Handle to the object at the position on the display.
function GetUIObjectAtPosition(displayIndex, position) end

--096
--Object-Free - GetVar(light_userdata:variables, string:varname): value

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_getvar.html)
---
---@param variableSet lightuserdata This is the handle to the variable set - GlobalVars(), UserVars(), AddonVars(), PluginVars()
---@param variableName string The name of the variable
---@return string|number|nil # The value of the variable - nil if the variable is not found
function GetVar(variableSet, variableName) end

--097
--Objects-Free - GlobalVars(nothing): light_userdata:global_variables

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_globalvars.html)
---
---@return lightuserdata # Returns the handle to the global variable set.
function GlobalVars() end

--098
--Object-Free - HandleToInt(light_userdata:handle): integer:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_handletoint.html)
---
---@param handle lightuserdata The handle of the object.
---@return integer # The returned integer is the handle converted to an integer.
function HandleToInt(handle) end

--099
--Object-Free - HandleToStr(light_userdata:handle): string:handle(in H#... format)

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_handletostring.html)
---
---@param handle lightuserdata The handle of the object.
---@return string # The returned string is the handle translated into a hexadecimal format Starting with 'H#' followed by the hex string.
function HandleToStr(handle) end

--100
--Object-Free - HookObjectChange(function:callback, light_userdata:handle, light_userdata:plugin_handle[, light_userdata:target]): integer:hook_id

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_hookobjectchange.html)
---
---@param callback function
---@param handle lightuserdata
---@param pluginHandle lightuserdata
---@param target? lightuserdata
function HookObjectChange(callback, handle, pluginHandle, target) end

--101
--Object-Free - HostOS(nothing): string:ostype

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_hostos.html)
---
---@return string # A string is returned indicating the operating system e.g. 'Windows' or 'Linux'.
function HostOS() end

--102
--Object-Free - HostSubType(nothing): string:hostsubtype

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_hostsubtype.html)
---
---@return string # A string is returned indicating the station sub type e.g. 'FullSize' or 'Light'.
function HostSubType() end

--103
--Object-Free - HostType(nothing): string:hosttype

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_hosttype.html)
---
---@return string # A string is returned indicating the station type e.g. 'Console' or 'onPC'.
function HostType() end

--104
--Object-Free - Import(string:file_name): table:content

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_import.html)
---
---@param filename string
---@return table
function Import(filename) end

--105
--Object-Free - IncProgress(integer:progressbar_index[, integer:delta]): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_incprogress.html)
---
---@param handle lightuserdata The handle for the progress bar.
---@param delta? integer The desired value change for the progress. This can be a negative value to decrease the value. The default value is "1".
function IncProgress(handle, delta) end

--106
--Object-Free - IntToHandle(integer:handle): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_inttohandle.html)
---
---@param luaInteger integer The integer that correlates to an object's handle.
---@return lightuserdata # The returned handle of the object correlates with the integer.
function IntToHandle(luaInteger) end

--107
--Object-Free - IsClassDerivedFrom(string:derived_name, string:base_name): boolean:result

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_isclassderivedfrom.html)
---
---@param derivedName string Name of class to check.
---@param baseName string Name of class that would be the base class.
---@return boolean # True is returned if the class is derived from the base. False if that is not the case.
function IsClassDerivedFrom(derivedName,baseName) end

--108
--Object-Free - IsObjectValid(light_userdata:handle): boolean:valid

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_isobjectvalid.html)
---
---@param handle lightuserdata The parameter should be the handle to a possible object.
---@return boolean|nil # The returned value is a boolean True if the handle is a valid object or it returns nil if it is not a valid object.
function IsObjectValid(handle) end

--109
--Object-Free - Keyboard(integer:display_index, string:type('press', 'char', 'release')[ ,string:char(for type 'char') or string:keycode, boolean:shift, boolean:ctrl, boolean:alt, boolean:numlock]): nothing

---
---[Online Manual Page]()
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

--110
--Object-Free - KeyboardObj(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_keyboardobj.html)
--- 
---Root().GraphicsRoot.PultCollect["Pult 1"].Devices["Keyboard 2"]
---@return lightuserdata # Handle to the first found keyboard object.
function KeyboardObj() end

--111
--Object-Free - LoadExecConfig(light_userdata:executor): nothing
--ToDo
---
---[Online Manual Page]()
---
---@param executorHandle lightuserdata
function LoadExecConfig(executorHandle) end

--112
--Object-Free - MasterPool(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_masterpool.html)
---
---@return lightuserdata # The returned handle to the pool of masters.
function MasterPool() end

--113
--Object-Free - MessageBox({title:string,[, string:backColor][, integer:timeout (ms)][, boolean:timeoutResultCancel][, integer:timeoutResultID][, string:icon][, string:titleTextColor][, string:messageTextColor] [, boolean:autoCloseOnInput] string:message[, integer:message_align_h(Enums.AlignmentH)][, integer:message_align_v(Enums.AlignmentV)][, integer|lightuserdata:display], commands:{array of {integer:value, string:name[, integer:order]}}, inputs:{array of {string:name, string:value, string:blackFilter, string:whiteFilter, string:vkPlugin, integer:maxTextLength[, integer:order]}}, states:{array of {string:name, boolean:state[, integer:order]}, selectors:{array of {name:string, integer:selectedValue, values:table[, type:integer 0-swipe, 1-radio][, integer:order]} }): {boolean:success, integer:result, inputs:{array of [string:name] = string:value}, states:{array of [string:name] = boolean:state}, selectors:{array of [string:name] = integer:selected-value}}

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_messagebox.html)
---
---@param tableMessageBox table {title:string, backColor:string, timeout:number, timeoutResultCancel:boolean, timeoutResultID:number, icon:string, titleTextColor:string, messageTextColor:string, message:string, display:integer|lightuserdata, commands:table{value:integer, name:string}, inputs:table{name:string, value:string, blackfilter:string, vkPlugin:string, maxTextLength:integer}, states:table{name:string, state:boolean, group:integer}, selectors:table{name:string, selectedValue:integer, values:table{valueName:integer,...}}}
---@return table # The returned table contains a boolean indicating success and a "result" integer returning an integer the value of the tapped command button or the timeout result ID. It can also contain sub tables for the inputs, states, or selectors. 
function MessageBox(tableMessageBox) end

--114
--Object-Free - Mouse(integer:display_index, string:type('press', 'move', 'release')[ ,string:button('Left', 'Middle', 'Right' for 'press', 'release') or integer:abs_x, integer:abs_y)]): nothing
--ToDo
---
---[Online Manual Page]()
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

--115
--Object-Free - MouseObj(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_mouseobj.html)
---
---Root().GraphicsRoot.PultCollect["Pult 1"].Devices["MouseCollect 1"]["Mouse 1"]
---@return lightuserdata # Returns the handle to the first found mouse object.
function MouseObj() end

--116
--Object-Free - NeedShowSave(nothing): boolean:need_show_save

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_needshowsave.html)
---
---@return boolean # Returns true if there are unsaved elements in the show file.
function NeedShowSave() end

--117
--Object-Free - NextDmxModeFixture(light_userdata:fixture): light_userdata:fixture

---
---[Online Manual Page]()
---
---@param fixture lightuserdata Handle to a fixture.
---@return lightuserdata # Handle to the next fixture using the same DMX Mode as the provided fixture.
function NextDmxModeFixture(fixture) end

--118
--Object-Free - ObjectList(string:address): table of light_userdata:handle
--ToDo - Update needed

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_objectlist.html)
---
---@param address string The string input should match the commandline input to make a selection of objects e.g. "Fixture 1 trhru 10".
---@return table # The table contains handles to the objects.
function ObjectList(address) end

--119
--Object-Free - OverallDeviceCertificate(nothing): pCertificate::OverallCertificate
--ToDo

---
---[Online Manual Page]()
---
---@return lightuserdata
function OverallDeviceCertificate() end

--120
--Object-Free - Patch(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_patch.html)
--- 
---Root().ShowData.LivePatch
---@return lightuserdata # The returned handle to the patch object.
function Patch() end

--121
--Object-Free - PluginVars([string: plugin name]): light userdata: plugin variables
--ToDo
---
---Inside the current Screen Configuration, we have a collect of Plugin Preferences. 
---A plugin preference is currently only storing one value: the display preference. 
---so you can use the PluginVars for manipulating the preferenced display for some menus:
---e.g. to reset the display preference for executor editor, do this:
---local execEdit = PluginVars("ExecutorEditor");
---execEdit.DisplayIndex = "None";
---
---[Online Manual Page]()
---
---@param pluginName? string
---@return lightuserdata
function PluginVars(pluginName) end

--122
--Object-Free - PopupInput({title:str, caller:handle, items:table:{{'str'|'int'|'lua'|'handle', name, type-dependent}...}, selectedValue:str, x:int, y:int, target:handle, render_options:{left_icon,number,right_icon}, useTopLeft:bool, properties:{prop:value}, add_args:{FilterSupport='Yes'/'No'}}): string:value
--ToDo
---
---[Online Manual Page]()
---
---@param popupTable table
---@return string # Returned value from the pop-up
function PopupInput(popupTable) end

--123
--Object-Free - PrepareWaitObjectChange(light_userdata:object[, int:change level threshold]): true or nil
--ToDo
---
---[Online Manual Page]()
---
---@param object lightuserdata
---@param changeLevelThreshold? integer
---@return boolean|nil
function PrepareWaitObjectChange(object, changeLevelThreshold) end

--124
--Object-Free - Printf(string:format ...): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_printf.html)
---
---@generic T
---@param format string The string input is printed in the Command Line History and the System Monitor. It allows for format specifiers.
---@param ...? T Additional arguments.
function Printf(format, ...) end

--125
--Object-Free - Programmer(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle to the current users programmer object
function Programmer() end

--126
--Object-Free - ProgrammerPart(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle to the current users programmer part object
function ProgrammerPart() end

--127
--Object-Free - Pult(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_pult.html)
--- 
---Root().GraphicsRoot.PultCollect["Pult 1"]
---@return lightuserdata # Handle to the Pult Collect object.
function Pult() end

--128
--Object-Free - RefreshLibrary(light userdata: Handle): 
--ToDo
---
---[Online Manual Page]()
---
---@param handle lightuserdata
function RefreshLibrary(handle) end

--129
--Object-Free - ReleaseType(nothing): string::release type

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_releasetype.html)
---
---@return string # The string indicates the release type
function ReleaseType() end

--130
--Object-Free - RemoteCommand(string:ip, string:command): bool: success
--ToDo
---
---[Online Manual Page]()
---
---@param ipAddress string
---@param command string
---@return boolean
function RemoteCommand(ipAddress, command) end

--131
--Object-Free - Root(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_root.html)
---
---@return lightuserdata # Handle to the Root object.
function Root() end

--132
--Object-Free - SaveExecConfig(light_userdata: exec handle): nothing
--ToDo
---
---[Online Manual Page]()
---
---@param handle lightuserdata
function SaveExecConfig(handle) end

--133
--Object-Free - SelectedDrive(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata# handle to the currently selected drive.
function SelectedDrive() end

--134
--Object-Free - SelectedFeature(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle of the current users selected feature.
function SelectedFeature() end

--135
--Object-Free - SelectedLayout(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle of the current users selected layout.
function SelectedLayout() end

--136
--Object-Free - SelectedSequence(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_selectedsequence.html)
---
---@return lightuserdata # Returns the handle to this users currently selected sequence.
function SelectedSequence() end

--137
--Object-Free - SelectedTimecode(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle of the current users selected timecode.
function SelectedTimecode() end

--138
--Object-Free - SelectedTimer(nothing): light_userdata:handle

---
---[Online Manual Page]()
---
---@return lightuserdata # Handle of the current users selected timer.
function SelectedTimer() end

--139
--Object-Free - Selection(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_selection.html)
---
---@return lightuserdata # Returns the handle to the object list containing this users currently selected (sub)fixtures.
function Selection() end

--140
--Object-Free - SelectionComponentX(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo
---
---[Online Manual Page]()
---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentX() end

--141
--Object-Free - SelectionComponentY(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo
---
---[Online Manual Page]()
---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentY() end

--142
--Object-Free - SelectionComponentZ(nothing): int: min, int:max, int:index, int:block, int:group
--ToDo
---
---[Online Manual Page]()
---
---@return integer min
---@return integer max
---@return integer index
---@return integer block
---@return integer group
function SelectionComponentZ() end

--143
--Object-Free - SelectionCount(nothing): int: amount of selected subfixtures

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_selectioncount.html)
---
---@return integer # Returns the amount of currently selected (sub)fixtures.
function SelectionCount() end

--144
--Object-Free - SelectionFirst(nothing): int:first subfixture index, int:x, int:y, int:z

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_selectionfirst.html)
---
---@return integer subFixtureIndex The returned index is the patch index of the first fixture in the current selection. It is not the FID or CID. The index is 0-based.
---@return integer x This is the fixtures position on the X-axis in the selection grid. The selection grid is 0-based.
---@return integer y This is the fixtures position on the Y-axis in the selection grid. The selection grid is 0-based.
---@return integer z This is the fixtures position on the Z-axis in the selection grid. The selection grid is 0-based.
function SelectionFirst() end

--145
--Object-Free - SelectionNext(int:current subfixture index): int: next subfixture index, int:x, int:y, int:z

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_selectionnext.html)
---
---@return integer subFixtureIndex The returned index is the patch index of the next fixture in the current selection. It is not the FID or CID. The index is 0-based.
---@return integer x This is the fixtures position on the X-axis in the selection grid. The selection grid is 0-based.
---@return integer y This is the fixtures position on the Y-axis in the selection grid. The selection grid is 0-based.
---@return integer z This is the fixtures position on the Z-axis in the selection grid. The selection grid is 0-based.
function SelectionNext() end

--146
--Object-Free - SelectionNotifyBegin(ligh_userdata:associated context): 
--ToDo
---
---[Online Manual Page]()
---
---@param associatedContext lightuserdata
function SelectionNotifyBegin(associatedContext) end

--147
--Object-Free - SelectionNotifyEnd(ligh_userdata:associated context): 
--ToDo
---
---[Online Manual Page]()
---
---@param associatedContext lightuserdata
function SelectionNotifyEnd(associatedContext) end

--148
--Object-Free - SelectionNotifyObject(ligh_userdata:object to notify about): 
--ToDo
---
---[Online Manual Page]()
---
---@param notifyObject lightuserdata
function SelectionNotifyObject(notifyObject) end

--149
--Object-Free - SerialNumber(nothing): string::SerialNumber

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_serialnumber.html)
---
---@return string # The returned string is the Serial number of the grandMA3 hardware or grandMA3 onPC.
function SerialNumber() end

--150
--Object-Free - SetBlockInput(boolean:block): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setblockinput.html)
---
---@param block boolean
function SetBlockInput(block) end

--151
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

--152
--Object-Free - SetLED(light_userdata:usb device object handle,table:led_values): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setled.html)
---
---@param usbDeviceObject lightuserdata
---@param ledValue table
function SetLED(usbDeviceObject, ledValue) end

--153
--Object-Free - SetProgPhaser(number:uichannelindex, {[abs_preset:<light_userdata: handle>][rel_preset:<light_userdata: handle>][fade:<val>][delay:<val>][speed:<Hz>][phase:<val>][measure:<val>][gridpos:<val>]   {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}*}): nothing
--ToDo
---
---[Online Manual Page]()
---
---@param uiChannelIndex integer
---@param phaserValueTable table
function SetProgPhaser(uiChannelIndex, phaserValueTable) end

--154
--Object-Free - SetProgPhaserValue(number:uichannelindex, number:step, {[function:<val>] [absolute:<val>][absolute_value:<val>][relative:<val>] [accel:<val>][accel_type:<Enums.SplineType>][decel:<val>][decel_type:<Enums.SplineType>] [trans:<val>][width:<val>] [integrated:<light_userdata: handle>]}): nothing
--ToDo
---
---[Online Manual Page]()
---
---@param uiChannelIndex integer
---@param step integer
---@param phaserValueTable table
function SetProgPhaserValue(uiChannelIndex, step, phaserValueTable) end

--155
--Object-Free - SetProgress(light_userdate:handle, integer:value): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setprogress.html)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param value integer The desired value indicating the current status or position of the progress bar.
function SetProgress(handle, value) end

--156
--Object-Free - SetProgressRange(light_userdate:handle, integer:start, integer:end): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setprogressrange.html)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param rangeStart integer The start value for the progress bar's range.
---@param rangeEnd integer The end value for the progress bar's range.
function SetProgressRange(handle, rangeStart, rangeEnd) end

--157
--Object-Free - SetProgressText(light_userdate:handle, string:text): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setprogresstext.html)
---
---@param handle lightuserdata The Handle for the progress bar.
---@param text string The text string to be displayed on the progress bar.
function SetProgressText(handle, text) end

--158
--Object-Free - SetVar(light userdata: variables, string:varname,value): bool:success

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_setvar.html)
---
---@param variableSet lightuserdata The handle to a variable set (Global or User).
---@param variableName string The name of the variable.
---@param value string|number The value given to the variable.
---@return boolean # The returned boolean indicate if the vairable is set (True) or not (False)
function SetVar(variableSet, variableName, value) end

--159
--Object-Free - ShowData(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_showdata.html)
--- 
---Root().ShowData
---@return lightuserdata # Handle to the ShowData object.
function ShowData() end

--160
--Object-Free - ShowSettings(nothing): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_showsettings.html)
--- 
---Root().ShowData.ShowSettings
---@return lightuserdata # Handle to the ShowSettings object.
function ShowSettings() end

--161
--Object-Free - StartProgress(string:name): light_userdate:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_startprogress.html)
---
---@param name string The string is the title for the progress bar.
---@return lightuserdata # Handle to the progrees bar.
function StartProgress(name) end

--162
--Object-Free - StopProgress(light_userdate:handle): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_stopprogress.html)
---
---@param handle lightuserdata The handle for the progress bar to be stopped.
function StopProgress(handle) end

--163
--Object-Free - StrToHandle(string: handle in H#... format): light_userdata:handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_strtohandle.html)
---
---@param handleInStringFormat string The string should be a handle number in a hexadecimal format.
---@return lightuserdata # The returned handle based on the string.
function StrToHandle(handleInStringFormat) end

--164
--Object-Free - SyncFS(nothing): nothing
--ToDo
---
---[Online Manual Page]()
---
function SyncFS() end

--165
--Object-Free - TestPlaybackOutput(table:expectations): boolean:success, string:result text
--ToDo
---
---[Online Manual Page]()
---
---@param expectationsTable table
---@return boolean
---@return string
function TestPlaybackOutput(expectationsTable) end

--166
--Object-Free - TestPlaybackOutputSteps(table:expectations): boolean:success, string:result text
--ToDo
---
---[Online Manual Page]()
---
---@param expectationsTable table
---@return boolean
---@return string
function TestPlaybackOutputSteps(expectationsTable) end


--167
--Object-Free - TextInput([string:title [, string:value [, integer:x [, integer:y]]]]): string:value

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_textinput.html)
---
---@param title? string|nil This string is the title for the pop-up. The title bar has a default "Edit" text at the beginning of the title that cannot be removed.
---@param value? string|nil This string is the text already in the input field - can be used to provide user guidance.
---@param x? integer|nil This integer defines a position on the x-axis where the pop-up should appear (on all screens). "0" is on the left side of the screen. Nil or undefined is centered.
---@param y? integer This integer defines a position on the y-axis where the pop-up should appear (on all screens). "0" is at the top of the screen. Nil or undefined is centered.
---@return string # The returned user input.
function TextInput(title, value, x, y) end

--168
--Object-Free - Time(nothing): number:time

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_time.html)
---
---@return number # Returns the "online time" in seconds.
function Time() end

--169
--Object-Free - Timer(function:name, number:delaytime, number:max_count, [function:cleanup], [light_userdata:context object]): nothing

---
---[Online Manual Page]()
---
---@param name function
---@param delayTime number
---@param maxCount number
---@param cleanup? function|nil
---@param contextObject? lightuserdata
function Timer(name, delayTime, maxCount, cleanup, contextObject) end

--170
--Object-Free - ToAddr(light_userdata:handle): string:address

---
---[Online Manual Page]()
---
---@param handle lightuserdata
---@return string
function ToAddr(handle) end

--171
--Object-Free - Touch(integer: displayIndex, string:type('press','move','release'), integer:touchId, integer:absX, integer:absY): 
--ToDo
---
---[Online Manual Page]()
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

--172
--Object-Free - TouchObj(nothing): light_userdata:touch object handle

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_touchobj.html)
---
---Root().GraphicsRoot.PultCollect["Pult 1"].Devices["Touch 2"]
---@return lightuserdata # The handle to the touch object.
function TouchObj() end

--173
--Object-Free - Unhook(function:callback): nothing

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_unhook.html)
---
---@param callback integer This must be an integer matching the hook returned when using the HookObjectChange function.
function Unhook(callback) end

--174
--Object-Free - UnhookMultiple(function:callback(can be nil), light_userdata:handle to target(can be nil), light_userdata: handle to context (can be nil)): integer: amount of removed hooks

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_unhookmultiple.html)
---
---@param callback function|nil
---@param handleTarget lightuserdata|nil
---@param handleContext lightuserdata|nil
---@return integer # The amount of removed hooks
function UnhookMultiple(callback, handleTarget, handleContext) end

--175
--Object-Free - UserVars(): light userdata: user variables

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_uservars.html)
---
---@return lightuserdata # Returns the handle to the user variable set.
function UserVars() end

--176
--Object-Free - Version(nothing): string::version

---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.0/HTML/lua_objectfree_version.html)
---
---@return string # The returned string indicates the version number of the software.
function Version() end

--177
--Object-Free - WaitModal([number:seconds to wait]): handle to modal overlay or nil on failure(timeout)
--ToDo
---
---
---
---@param seconds number
---@return lightuserdata|nil # Handle to modal overlay or nil on failure or timeout 
function WaitModal(seconds) end

--178
--Object-Free - WaitObjectDelete(light_userdata:handle to UIObject[, number:seconds to wait]): boolean:true on success, nil on timeout
--ToDo
---
---
---
---@param handleToUIObject lightuserdata
---@param secondsWait number
---@return boolean|nil # Return True if success and nil on timeout
function WaitObjectDelete(handleToUIObject, secondsWait) end