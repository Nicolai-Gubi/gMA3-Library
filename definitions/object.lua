---@meta

--
-- These are all the object api functions in the grandMA3 system. 
-- Most are not described yet in this definition.
--
-- This list is from version 2.1.1.2
--


--001
-- AddListChildren(light_userdata:handle, light_userdata:parent[, enum{Roles}:role]): nothing

--002
-- AddListChildrenNames(light_userdata:handle, light_userdata:parent[, enum{Roles}:role]): nothing

--003
-- AddListLuaItem(light_userdata:handle, string:name, string:value/function name, lua_function:callback reference[, <any lua type>:argument to pass to callback[, {[left={...}][right={...}]}:appearance]]): nothing

--004
-- AddListLuaItems(light_userdata:handle, table{item={[1]=name, [2]=value/function name, [3]=callback reference[, [4]=argument of any lua type to pass to callback]}, ...}): nothing

--005
-- AddListNumericItem(light_userdata:handle, string:name, number:value[,light_userdata:base handle[, {[left={...}][right={...}]}:appearance]]): nothing

--006
-- AddListNumericItems(light_userdata:handle, table{item={[1]=name, [2]=integer:value}, ...}): nothing

--007
-- AddListObjectItem(light_userdata:handle, light_userdata:target object[, (string: explicit name[, {[left={...}][right={...}]}:appearance] | enum{Roles}: role [, :boolean: extended_name[, {[left={...}][right={...}]}:appearance]])]): nothing

--008
-- AddListPropertyItem(light_userdata:handle, string:name, string:value, light_userdata:target handle[,{[left={...}][right={...}]}:appearance]): nothing

--009
-- AddListPropertyItems(light_userdata:handle, table{item={[1]=name, [2]=property name, [3]=target handle}, ...}): nothing

--010
-- AddListRecursiveNames(light_userdata:handle, light_userdata:parent[, enum{Roles}:role]): nothing

--011
-- AddListStringItem(light_userdata:handle, string:name, string:value[, {[left={...}][right={...}]}:appearance]): nothing

--012
-- AddListStringItems(light_userdata:handle, table{item={[1]=name, [2]=value}, ...}): nothing

--013
-- Addr(light_userdata:handle[, light_userdata:base_handle[, boolean:force_parent-based_address[, boolean:force_commandline_index-based_address]]]): string:numeric_root_address
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_addr.html)
---
---@param objectHandle lightuserdata The Object.
---@param baseHandle? lightuserdata This handle defines a base for the returned address.
---@param parentBasedAddr? boolean If this is true, then the returned address is indexed from the base address.
---@param indexBasedAddress? boolean If this is true, then the returned number is index based 
---@return string # The address of the object in a index number format - returned as a string. 
function Addr(objectHandle, baseHandle, parentBasedAddr) end

--014
-- AddrNative(light_userdata:handle, light_userdata:base_handle[, boolean:escape_names]]): string:numeric_root_address
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_addrnative.html)
---
---@param objectHandle lightuserdata The Object.
---@param baseHandle? lightuserdata This handle defines a base for the returned address.
---@param escapeNames? boolean If this is true, then the returned address is in quotation marks.
---@return string # The address of the object in a text format. 
function AddrNative(objectHandle, baseHandle, escapeNames) end

--015
-- Append(light_userdata:handle[, string:class[, light_userdata:undo[, integer:count]]]): light_userdata:child_handle

--016
-- Aquire(light_userdata:handle[, string:class[, light_userdata:undo]]): light_userdata:child_handle

--017
-- Changed(light_userdata:handle, string:change_level_enum_name): nothing

--018
-- Children(light_userdata:handle): {light_userdata:child_handles}
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_children.html)
---
---@param objectHandle lightuserdata The Object.
---@return table # The children of the object is returned in a table of handles.
function Children(objectHandle) end

--019
-- ClearList(light_userdata:handle): nothing

--020
-- ClearUIChildren(light_userdata:handle to UIObject): nothing

--021
-- CmdlineChildren(light_userdata:handle): {light_userdata:child_handles}

--022
-- CmdlinePtr(light_userdata:handle, integer:index(1-based)): light_userdata:child_handle

--023
-- CommandAt(light_userdata:handle): nothing

--024
-- CommandCall(light_userdata:handle, light_userdata:dest_handle, boolean:focus_search_allowed(default:true)): nothing

--025
-- CommandCreateDefaults(light_userdata:handle): nothing

--026
-- CommandDelete(light_userdata:handle): nothing

--027
-- CommandStore(light_userdata:handle): nothing

--028
-- Compare(light_userdata:handle, light_userdata:handle): boolean:is_equal, string:what_differs

--029
-- Copy(light_userdata:dst_handle, light_userdata:src_handle[, light_userdata:undo]): nothing

--030
-- Count(light_userdata:handle): integer:child_count
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_count.html)
---
---@param handle lightuserdata The Object.
---@return integer # The returned integer indicates the number of children in the object.
function Count(handle) end

--031
-- Create(light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo]]): light_userdata:child_handle

--032
-- CurrentChild(light_userdata:handle): light_userdata:current_child or nothing

--033
-- Delete(light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]): nothing

--034
-- Dump(light_userdata:handle): string:information
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_dump.html)
---
---@param handle lightuserdata The Object.
---@return string # The returned string contains.
function Dump(handle) end

--035
-- Export(light_userdata:handle, string:file_path, string:file_name): boolean:success
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_export.html)
---
---@param handle lightuserdata The Object.
---@param filePath string The string indicating the path for the exported file.
---@param fileName string The string indicating the file name for the exported file.
---@return boolean # The booleans indicates if the export was asuccess.
function Export(handle,filePath, fileName) end

--036
-- Find(light_userdata:search_start_handle, string:search_name[, string:search_class_name]): light_userdata:found_handle

--037
-- FindListItemByName(light_userdata:handle, string:value): integer:1-based index

--038
-- FindListItemByValueStr(light_userdata:handle, string:value): integer:1-based index

--039
-- FindParent(light_userdata:search_start_handle, string:search_class_name): light_userdata:found_handle

--040
-- FindRecursive(light_userdata:search_start_handle, string:search_name[, string:search_class_name]): light_userdata:found_handle

--041
-- FindWild(light_userdata:search_start_handle, string:search_name): light_userdata:found_handle

--042
-- FSExtendedModeHasDots(light_userdata:handle to UIGrid (or derived), {r, c}:cell): boolean

--043
-- Get(light_userdata:handle, string:property_name[, integer:role(Enums.Roles)]): light:userdata:child or string:property (if 'role' provided - always string)
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_get.html)
---
---@param objectHandle lightuserdata The Object.
---@param propertyName string The name of the property.
---@param role? integer Setting a role integer (Enums.Roles) forces the returned string to be in a text format.
---@return lightuserdata | string # The funtion returns a handle to the child object or a string with the value of the property. If Role is provided, then the return is always a string.
function Get(objectHandle, propertyName, role)end

--044
-- GetAssignedObj(light_userdata:handle): light_userdata:handle

--045
-- GetChildClass(light_userdata:handle): string:class_name
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_getchildclass.html)
---
---@param objectHandle lightuserdata The Object.
---@return string # The name of the class of the object's children.
function GetChildClass(objectHandle) end


--046
-- GetClass(light_userdata:handle): string:class_name
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_getclass.html)
---
---@param objectHandle lightuserdata The Object.
---@return string # The name of the object's class.
function GetClass(objectHandle) end

--047
-- GetDependencies(light_userdata:handle): {light_userdata:handle}
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata The Object.
---@return # The returned table contains handles to all the objects which this object depends on.
function GetDependencies(objectHandle) end

--048
-- GetDisplay(light_userdata:handle to UIObject): light_userdata:display_handle

--049
-- GetDisplayIndex(light_userdata:handle to UIObject): integer:display_index

--050
-- GetExportFileName(light_userdata:handle[, boolean:camel_case_to_file_name]): string:file_name

--- This table is used for the "GetFader" and "GetFaderText" function.
---@class tableGetFader
---@field token? string The valid options are: FaderMaster, FaderRate, FaderTemp, FaderSpeed, FaderTime, FaderXFade, FaderXFadeA, FaderXFadeB, FaderHighlight, FaderLowlight.
---@field index? integer 

--051
-- GetFader(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): float:value[0..100]
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata
---@param GetFaderTable tableGetFader
---@return number # The faders current value is returned as a float number.
function GetFader(objectHandle, GetFaderTable) end

--052
-- GetFaderText(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): string:text
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata
---@param GetFaderTable tableGetFader
---@return number # The faders current value is returned as a string.
function GetFaderText(objectHandle, GetFaderTable) end

--053
-- GetLineAt(light_userdata:handle, integer:line_number): string:line_content

--054
-- GetLineCount(light_userdata:handle): integer:count

--055
-- GetListItemAppearance(light_userdata:handle, integer:index): {left={AppearanceData}, right={AppearanceData}}

--056
-- GetListItemButton(light_userdata:handle, integer:index): light userdata:button or nil if not visible

--057
-- GetListItemName(light_userdata:handle, integer:index): string:name

--058
-- GetListItemsCount(light_userdata:handle): integer:amount of items in the list

--059
-- GetListItemValueI64(light_userdata:handle, integer:index): integer:value

--060
-- GetListItemValueStr(light_userdata:handle, integer:index): string:value

--061
-- GetListSelectedItemIndex(light_userdata:handle): integer:1-based index

--062
-- GetOverlay(light_userdata:handle to UIObject): light_userdata:overlay_handle

--063
-- GetReferences(light_userdata:handle): {light_userdata:handle}
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata The Object.
---@return table # The returned table contains handles to all the objects referencing the object.
function GetReferences(objectHandle) end

--064
-- GetScreen(light_userdata:handle to UIObject): light_userdata:handle

--065
-- GetUIChild(light_userdata:handle to UIObject, integer:index(1-based)): light_userdata:handle to UIObject

--066
-- GetUIChildrenCount(light_userdata:handle to UIObject): integer:count

--067
-- GetUIEditor(light_userdata:handle): string:ui_editor_name
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata The Object.
---@return string # The name of the objects' UI editor.
function GetUIEditor(objectHandle) end

--068
-- GetUISettings(light_userdata:handle): string:ui_settings_name
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata The Object.
---@return string # The name of the objects' UI settings.
function GetUISettings(objectHandle) end

--069
-- GridCellExists(light_userdata:handle to UIGrid (or derived), {r, c}:cell): boolean

--070
-- GridGetBase(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridBase

--071
-- GridGetCellData(light_userdata:handle to UIGrid (or derived), {r, c}:cell): {text, color={text, back}}

--072
-- GridGetCellDimensions(light_userdata:handle to UIGrid (or derived), {r, c}:cell): {x, y, w, h}

--073
-- GridGetData(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridData

--074
-- GridGetDimensions(light_userdata:handle to UIGrid (or derived)): {r, c}

--075
-- GridGetParentRowId(light_userdata:handle to UIGrid (or derived), integer: rowId): parent row id (integer) or nil (if there's no parent)

--076
-- GridGetScrollCell(light_userdata:handle to UIGrid (or derived)): {r, c}

--077
-- GridGetScrollOffset(light_userdata:handle to UIGrid (or derived)): {v = {index, offset}, h={index, offset}}

--078
-- GridGetSelectedCells(light_userdata:handle to UIGrid (or derived)): array of {r, c, r_UniqueId, r_GroupId, c_UniqueId, c_GroupId} cells in the selection

--079
-- GridGetSelection(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridSelection

--080
-- GridGetSettings(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridSettings

--081
-- GridIsCellReadOnly(light_userdata:handle to UIGrid (or derived), {r, c}:cell): boolean

--082
-- GridIsCellVisible(light_userdata:handle to UIGrid (or derived), {r, c}:cell): boolean

--083
-- GridMoveSelection(light_userdata:handle to UIGrid (or derived), x, y): nothing

--084
-- GridScrollCellIntoView(light_userdata:handle to UIGrid (or derived), {r, c}:cell): nothing

--085
-- GridSetColumnSize(light_userdata:handle to UIGrid (or derived), integer: columnId, integer:size in pixels): nothing

--086
-- GridsGetColumnById(light_userdata:handle to UIGrid (or derived), integer: columnId): column index or nil (if there's no such visible column)

--087
-- GridsGetExpandHeaderCell(light_userdata:handle to UIGrid (or derived)): {r, c} or nil

--088
-- GridsGetExpandHeaderCellState(light_userdata:handle to UIGrid (or derived)): boolean or nil

--089
-- GridsGetLevelButtonWidth(light_userdata:handle to UIGrid (or derived), {r, c}:cell): width in pixels or nil

--090
-- GridsGetRowById(light_userdata:handle to UIGrid (or derived), integer: rowId): row index or nil (if there's no such visible row)

--091
-- HasActivePlayback(light_userdata:handle): boolean:result
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_hasactiveplayback.html)
---
---@param objectHandle lightuserdata The Object.
---@return boolean # The returned boolean indicates if the object has active playback.
function HasActivePlayback(objectHandle) end

--092
-- HasDependencies(light_userdata:handle): boolean:result

--093
-- HasEditSettingUI(light_userdata:handle): boolean:result

--094
-- HasEditUI(light_userdata:handle): boolean:result

--095
-- HasParent(light_userdata:handle, handle:object_to_check): nothing

--096
-- HasReferences(light_userdata:handle): boolean:result

--097
-- HookDelete(light_userdata:handle to UIObject, function:callback to invoke on deletion[, any:argument to pass by]): boolean:true on success, nil on failure

--098
-- Import(light_userdata:handle, string:file_path, string:file_name): boolean:success
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_import.html)
---
---@param objectHandle lightuserdata The Object.
---@param filePath string The string indicating the path for the imported file.
---@param fileName string The string indicating the file name of the imported file.
---@return boolean # The returned boolean indicates if the import was a successfully imported into the object.
function Import(objectHandle, filePath, fileName) end

--099
-- Index(light_userdata:handle): integer:index

--100
-- InputCallFunction(light_userdata:handle, string:function name[, ...parameters to function]): <depends on function>

--101
-- InputHasFunction(light_userdata:handle, string:function name): true or nil

--102
-- InputRun(light_userdata:handle): nothing

--103
-- InputSetAdditionalParameter(light_userdata:handle, string:parameter name, string:parameter value): nothing

--104
-- InputSetEditTitle(light_userdata:handle, string:name_value): nothing

--105
-- InputSetMaxLength(light_userdata:handle, integer:length): nothing

--106
-- InputSetTitle(light_userdata:handle, string:name_value): nothing

--107
-- InputSetValue(light_userdata:handle, string:value): nothing

--108
-- Insert(light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo[, integer:count]]]): light_userdata:child_handle

--109
-- IsClass(light_userdata:handle): boolean:result

--110
-- IsEmpty(light_userdata:handle): boolean:object_is_empty

--111
-- IsEnabled(light_userdata:handle to UIObject): bool:is enabled

--112
-- IsListItemEmpty(light_userdata:handle, integer:index): nothing

--113
-- IsListItemEnabled(light_userdata:handle, integer:index): nothing

--114
-- IsLocked(light_userdata:handle): boolean:object_is_locked

--115
-- IsValid(light_userdata:handle): boolean:result

--116
-- IsVisible(light_userdata:handle to UIObject): bool:is visible

--117
-- Load(light_userdata:handle, string:file_path, string:file_name): boolean:success

--118
-- MaxCount(light_userdata:handle): integer:child_count

--119
-- OverlaySetCloseCallback(light_userdata:handle to Overlay, callbackName:string[, ctx:anything]): nothing

--120
-- Parent(light_userdata:handle): light_userdata:parent_handle

--121
-- PrepareAccess(light_userdata:handle): nothing

--122
-- PropertyCount(light_userdata:handle): integer:property_count

--123
-- PropertyInfo(light_userdata:handle, integer:property_index): {string:read_only, string:import_ignore, string:export_ignore}

--124
-- PropertyName(light_userdata:handle, integer:property_index): string:property_name

--125
-- PropertyType(light_userdata:handle, integer:property_index): string:property_type

--126
-- Ptr(light_userdata:handle, integer:index(1-based)): light_userdata:child_handle
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_ptr.html)
---
---@param handle lightuserdata The Object.
---@param index integer The 1-based index number of the desired child object.
---@return lightuserdata | nil # The function returnes the handle to the child or nil if it doesn't exist.
function Ptr(handle, index) end

--127
-- Remove(light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]): nothing

--128
-- RemoveListItem(light_userdata:handle, string:name): nothing

--129
-- Resize(light_userdata:handle, integer:size): nothing

--130
-- Save(light_userdata:handle, string:file_path, string:file_name): boolean:success

--131
-- ScrollDo(light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:scroll entity (item or area, see 'ScrollParamEntity' enum), integer:value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side): boolean:true scroll

--132
-- ScrollGetInfo(light_userdata:handle, integer:scroll type (see 'ScrollType' enum)): {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil

--133
-- ScrollGetItemByOffset(light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:offset): integer:1-based item index

--134
-- ScrollGetItemOffset(light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx): integer:offset of the item or nil

--135
-- ScrollGetItemSize(light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx): integer:size of the item of nil

--136
-- ScrollIsNeeded(light_userdata:handle, integer:scroll type (see 'ScrollType' enum)): boolean:true if scroll of the requested type is needed

--137
-- SelectListItemByIndex(light_userdata:handle, integer:index(1-based)): nothing

--138
-- SelectListItemByName(light_userdata:handle, string:name_value): nothing

--139
-- SelectListItemByValue(light_userdata:handle, string:value): nothing

--140
-- Set(light_userdata:handle, string:property_name, string:property_value[, integer:override_change_level(Enums.ChangeLevel)]): nothing

--141
-- SetChildren(light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]): nothing

--142
-- SetChildrenRecursive(light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]): nothing

--143
-- SetContextSensHelpLink(light_userdata:handle to UIObject, string:topic name): nothing

--144
-- SetEmptyListItem(light_userdata:handle, integer:index[, bool:empty(default:true)]): nothing

--145
-- SetEnabledListItem(light_userdata:handle, integer:index[, bool:enable(default:true)]): nothing

--- This table is used for the "SetFader" function.
---@class tableSetFader
---@field value? number A float number defining teh desired value. If undefined, then default value is 0.0.
---@field token? string The valid options are: FaderMaster, FaderRate, FaderTemp, FaderSpeed, FaderTime, FaderXFade, FaderXFadeA, FaderXFadeB, FaderHighlight, FaderLowlight.
---@field faderEnabled? boolean True enables the fader if it can be toggled. False disables the fader. 

--146
-- SetFader(light_userdata:handle, {[float:value[0..100]], [boolean:faderEnabled], [string:token(Fader*)]}): nothing
---
---[Online Manual Page]()
---
---@param objectHandle lightuserdata The Object.
---@param setFaderTable tableSetFader The table is defined above.
function SetFader(objectHandle, setFaderTable)end

--147
-- SetListItemAppearance(light_userdata:handle, integer:index, {[left={...AppearanceData...}][right={...AppearanceData...}]}): nothing

--148
-- SetListItemName(light_userdata:handle, integer:index, string:name): nothing

--149
-- SetListItemValueStr(light_userdata:handle, integer:index, string:value): nothing

--150
-- SetPositionHint(light_userdata:handle, integer:x, integer:y): nothing

--151
-- ShowModal(light_userdata:handle, callback:function): nothing

--152
-- ToAddr(light_userdata:handle,boolean:with_name): string:address
---
---[Online Manual Page](https://help.malighting.com/grandMA3/2.1/HTML/lua_object_toaddr.html)
---
---@param objectHandle lightuserdata The Object.
---@param withName boolean 
---@return string # The address for the object as a string.
function ToAddr (objectHandle, withName) end

--153
-- UIChildren(light_userdata:handle to UIObject): array of references to children of passed UIObject

--154
-- UILGGetColumnAbsXLeft(light_userdata:handle to UILayoutGrid, integer:index): integer:x

--155
-- UILGGetColumnAbsXRight(light_userdata:handle to UILayoutGrid, integer:index): integer:x

--156
-- UILGGetColumnWidth(light_userdata:handle to UILayoutGrid, integer:index): integer:size

--157
-- UILGGetRowAbsYBottom(light_userdata:handle to UILayoutGrid, integer:index): integer:y

--158
-- UILGGetRowAbsYTop(light_userdata:handle to UILayoutGrid, integer:index): integer:y

--159
-- UILGGetRowHeight(light_userdata:handle to UILayoutGrid, integer:index): integer:size

--160
-- WaitChildren(light_userdata:handle to UIObject, integer:expected amount of children[, number:seconds to wait]): boolean:true on success, nil on timeout or if object doesn't exist

--161
-- WaitInit(light_userdata:handle to UIObject[, number:seconds to wait[, bool:force to re-init, default - false]]): boolean:true on success, nil on timeout or if object doesn't exist