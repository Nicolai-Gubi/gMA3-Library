---@meta

--
-- These are all the object api functions in the grandMA3 system. 
-- Most are not described yet in this definition.
--
-- This list is from version 1.9.3.3
-- There is currently 153 object function.
--
--

--001
-- AddListChildren(light_userdata:handle, light_userdata:parent[,enum{Roles}:role]): nothing

--002
-- AddListChildrenNames(light_userdata:handle, light_userdata:parent[,enum{Roles}:role]): nothing

--003
-- AddListLuaItem(light_userdata:handle,string:name,string:value/function name,lua_function:callback reference[,<any lua type>:argument to pass to callback[,{[left={...}][right={...}]}:appearance]]): nothing

--004
-- AddListLuaItems(light_userdata:handle, table{item={[1]=name,[2]=value/function name,[3]=callback reference[,[4]=argument of any lua type to pass to callback]},...}): nothing

--005
-- AddListNumericItem(light_userdata:handle,string:name,number:value[,light_userdata:base handle[,{[left={...}][right={...}]}:appearance]]): nothing

--006
-- AddListNumericItems(light_userdata:handle, table{item={[1]=name,[2]=integer:value},...}): nothing

--007
-- AddListObjectItem(light_userdata:handle,light_userdata:target object[,(string: explicit name[,{[left={...}][right={...}]}:appearance] | enum{Roles}: role [,:boolean: extended_name[,{[left={...}][right={...}]}:appearance]])]): nothing

--008
-- AddListPropertyItem(light_userdata:handle,string:name,string:value,light_userdata:target handle[,{[left={...}][right={...}]}:appearance]): nothing

--009
-- AddListPropertyItems(light_userdata:handle, table{item={[1]=name,[2]=property name,[3]=target handle},...}): nothing

--010
-- AddListRecursiveNames(light_userdata:handle, light_userdata:parent[,enum{Roles}:role]): nothing

--011
-- AddListStringItem(light_userdata:handle,string:name,string:value[,{[left={...}][right={...}]}:appearance]): nothing

--012
-- AddListStringItems(light_userdata:handle, table{item={[1]=name,[2]=value},...}): nothing

--013
-- Addr(light_userdata:handle [,light_userdata:base_handle [,bool:force parent-based address]]): text:numeric root address

--014
-- AddrNative(light_userdata:handle [,light_userdata:base_handle [,bool:escape names]]): text:numeric root address

--015
-- Append(light_userdata:handle [,string:class [,light_userdata:undo[,integer:count]]]): light_userdata:child_handle

--016
-- Aquire(light_userdata:handle [,string:class [,light_userdata:undo]]): light_userdata:child_handle

--017
-- Changed(light_userdata:handle, string:change level enum name): nothing

--018
-- Children(light_userdata:handle): table of light_userdata:child_handles

--019
-- ClearList(light_userdata:handle): nothing

--020
-- ClearUIChildren(light_userdata:handle to UIObject): nothing

--021
-- CmdlinePtr(light_userdata:handle, number:index(1-based)): light_userdata:child_handle

--022
-- CommandAt(light_userdata:handle): nothing

--023
-- CommandCall(light_userdata:handle, light_userdata:dest_handle, bool:focusSearchAllowed(default:true)): nothing

--024
-- CommandCreateDefaults(light_userdata:handle): nothing

--025
-- CommandDelete(light_userdata:handle): nothing

--026
-- CommandStore(light_userdata:handle): nothing

--027
-- Compare(light_userdata:handle, light_userdata:handle): bool:isEqual, String:whatDiffers

--028
-- Copy(light_userdata:dst_handle, light_userdata:src_handle [,light_userdata:undo]): nothing

--029
-- Count(light_userdata:handle): number:child_count

--030
-- Create(light_userdata:handle, number:child_index(1-based) [,string:class[,light_userdata:undo]]): light_userdata:child_handle

--031
-- CurrentChild(light_userdata:handle): light_userdata:current child or nil

--032
-- Delete(light_userdata:handle, number:child_index(1-based) [,light_userdata:undo]): nothing

--033
-- Dump(light_userdata:handle): string:information

---
---@param handle lightuserdata
---@return string
function Dump(handle) end

--034
-- Export(light_userdata:handle, string:file_path,string:file_name): bool:success

---
---@param handle lightuserdata
---@param filePath string
---@param fileName string
---@return boolean #
function Export(handle,filePath, fileName) end

--035
-- Find(light_userdata:search_start_handle,string search_name [,string search_class_name]): light_userdata:found_handle

--036
-- FindListItemByName(light_userdata:handle,string:value): integer:1-based index

--037
-- FindListItemByValueStr(light_userdata:handle,string:value): integer:1-based index

--038
-- FindParent(light_userdata:search_start_handle,string search_class_name): light_userdata:found_handle

--039
-- FindRecursive(light_userdata:search_start_handle,string search_name [,string search_class_name]): light_userdata:found_handle

--040
-- FindWild(light_userdata:search_start_handle,string search_name): light_userdata:found_handle

--041
-- Get(light_userdata:handle, string:property_name [,enum{Roles}:role]): string:property_value (if 'role' provided - always string)

--042
-- GetAssignedObj(light_userdata:handle): light_userdata:handle

--043
-- GetChildClass(light_userdata:handle): string:class_name

--044
-- GetClass(light_userdata:handle): string:class_name

--045
-- GetDependencies(light_userdata:handle): {light_userdata:handle}

--046
-- GetDisplay(light_userdata:handle to UIObject): light_userdata:display_handle

--047
-- GetDisplayIndex(light_userdata:handle to UIObject): integer:display_index

--048
-- GetExportFileName(light_userdata:handle [,bool:camel_case_to_file_name]): string:filename

--049
-- GetFader(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): double:value[0..100]

--050
-- GetFaderText(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): string:text

--051
-- GetLineAt(light_userdata:handle, number:line_number): string:line_content

--052
-- GetLineCount(light_userdata:handle): number:count

--053
-- GetListItemAppearance(light_userdata:handle,integer:index): {left={AppearanceData}, right={AppearanceData}}

--054
-- GetListItemButton(light_userdata:handle,integer:index): light userdata:button or nil if not visible

--055
-- GetListItemName(light_userdata:handle,integer:index): string:name

--056
-- GetListItemValueI64(light_userdata:handle,integer:index): integer:value

--057
-- GetListItemValueStr(light_userdata:handle,integer:index): string:value

--058
-- GetListItemsCount(light_userdata:handle): integer:amount of items in the list

--059
-- GetListSelectedItemIndex(light_userdata:handle): integer:1-based index

--060
-- GetOverlay(light_userdata:handle to UIObject): light_userdata:overlay_handle

--061
-- GetReferences(light_userdata:handle): {light_userdata:handle}

--062
-- GetScreen(light_userdata:handle to UIObject): light_userdata:handle

--063
-- GetUIChild(light_userdata:handle to UIObject, integer:index(1-based)): light_userdata:handle to UIObject

--064
-- GetUIChildrenCount(light_userdata:handle to UIObject): integer:count

--065
-- GetUIEditor(light_userdata:handle): string:ui_editor_name

--066
-- GetUISettings(light_userdata:handle): string:ui_settings_name

--067
-- GridCellExists(light_userdata:handle to UIGrid (or derived), {r,c}:cell): boolean

--068
-- GridGetBase(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridBase

--069
-- GridGetCellData(light_userdata:handle to UIGrid (or derived), {r,c}:cell): {text, color={text,back}}

--070
-- GridGetCellDimensions(light_userdata:handle to UIGrid (or derived), {r,c}:cell): {x,y,w,h}

--071
-- GridGetData(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridData

--072
-- GridGetDimensions(light_userdata:handle to UIGrid (or derived)): {r,c}

--073
-- GridGetParentRowId(light_userdata:handle to UIGrid (or derived), integer: rowId): parent row id (integer) or nil (if there's no parent)

--074
-- GridGetScrollCell(light_userdata:handle to UIGrid (or derived)): {r,c}

--075
-- GridGetScrollOffset(light_userdata:handle to UIGrid (or derived)): {v = {index,offset}, h={index,offset}}

--076
-- GridGetSelectedCells(light_userdata:handle to UIGrid (or derived)): array of {r,c, r_UniqueId,r_GroupId,c_UniqueId,c_GroupId} cells in the selection

--077
-- GridGetSelection(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridSelection

--078
-- GridGetSettings(light_userdata:handle to UIGrid (or derived)): light_userdata:handle to GridSettings

--079
-- GridIsCellReadOnly(light_userdata:handle to UIGrid (or derived), {r,c}:cell): boolean

--080
-- GridIsCellVisible(light_userdata:handle to UIGrid (or derived), {r,c}:cell): boolean

--081
-- GridScrollCellIntoView(light_userdata:handle to UIGrid (or derived), {r,c}:cell): nothing

--082
-- GridSetColumnSize(light_userdata:handle to UIGrid (or derived), integer: columnId, integer:size in pixels): nothing

--083
-- GridsGetExpandHeaderCell(light_userdata:handle to UIGrid (or derived)): {r,c} or nil

--084
-- GridsGetLevelButtonWidth(light_userdata:handle to UIGrid (or derived), {r,c}:cell): width in pixels or nil

--085
-- HasActivePlayback(light_userdata:handle): boolean:result

--086
-- HasDependencies(light_userdata:handle): boolean:result

--087
-- HasEditSettingUI(light_userdata:handle): bool:result

--088
-- HasEditUI(light_userdata:handle): bool:result

--089
-- HasParent(light_userdata:handle, handle:object to check): nothing

--090
-- HasReferences(light_userdata:handle): boolean:result

--091
-- HookDelete(light_userdata:handle to UIObject, function:callback to invoke on deletion[,any:argument to pass by]): boolean:true on success, nil on failure

--092
-- Import(light_userdata:handle, string:file_path,string:file_name): bool:success

--093
-- Index(light_userdata:handle): number:index

--094
-- InputCallFunction(light_userdata:handle, string:function name [,...parameters to function...]): <depends on function>

--095
-- InputHasFunction(light_userdata:handle, string:function name): true or nil

--096
-- InputRun(light_userdata:handle): nothing

--097
-- InputSetAdditionalParameter(light_userdata:handle, string:parameter name, string:parameter value): nothing

--098
-- InputSetEditTitle(light_userdata:handle, string:name_value): nothing

--099
-- InputSetMaxLength(light_userdata:handle, int:length): nothing

--100
-- InputSetTitle(light_userdata:handle, string:name_value): nothing

--101
-- InputSetValue(light_userdata:handle, string:value): nothing

--102
-- Insert(light_userdata:handle, number:child_index(1-based) [,string:class [,light_userdata:undo[,integer:count]]]): light_userdata:child_handle

--103
-- IsClass(light_userdata:handle): string:class_name

--104
-- IsEmpty(light_userdata:handle): boolean:returns true if objects is considered 'empty'

--105
-- IsEnabled(light_userdata:handle to UIObject): bool: is enabled

--106
-- IsListItemEmpty(light_userdata:handle,integer:index): nothing

--107
-- IsListItemEnabled(light_userdata:handle,integer:index): nothing

--108
-- IsValid(light_userdata:handle): bool:result

--109
-- IsVisible(light_userdata:handle to UIObject): bool: is visible

--110
-- Load(light_userdata:handle, string:file_path, string:file_name): bool:success

--111
-- MaxCount(light_userdata:handle): number:child_count

--112
-- OverlaySetCloseCallback(light_userdata:handle to Overlay, callbackName:string[, ctx:anything]): nothing

--113
-- Parent(light_userdata:handle): light_userdata:parent_handle

--114
-- PrepareAccess(light_userdata:handle): nothing

--115
-- PropertyCount(light_userdata:handle): number:property_count

--116
-- PropertyInfo(light_userdata:handle, number:property_index): {string:ReadOnly, string:ImportIgnore, string:ExportIgnore}

--117
-- PropertyName(light_userdata:handle, number:property_index): string:property_name

--118
-- PropertyType(light_userdata:handle, number:property_index): string:property_type

--119
-- Ptr(light_userdata:handle, number:index(1-based)): light_userdata:child_handle

--120
-- Remove(light_userdata:handle, number:child_index(1-based) [,light_userdata:undo]): nothing

--121
-- RemoveListItem(light_userdata:handle,string:name): nothing

--122
-- Resize(light_userdata:handle, number size): nothing

--123
-- Save(light_userdata:handle, string:file_path, string:file_name): bool:success

--124
-- ScrollDo(light_userdata:handle,integer:scroll type (see 'ScrollType' enum), integer:scroll entity (item or area, see 'ScrollParamEntity' enum), integer: value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side): boolean:true scroll

--125
-- ScrollGetInfo(light_userdata:handle,integer:scroll type (see 'ScrollType' enum)): {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil

--126
-- ScrollGetItemByOffset(light_userdata:handle,integer:scroll type (see 'ScrollType' enum), integer: offset): integer:1-based item index

--127
-- ScrollGetItemOffset(light_userdata:handle,integer:scroll type (see 'ScrollType' enum), integer: 1-based item idx): integer:offset of the item or nil

--128
-- ScrollGetItemSize(light_userdata:handle,integer:scroll type (see 'ScrollType' enum), integer: 1-based item idx): integer:size of the item of nil

--129
-- ScrollIsNeeded(light_userdata:handle,integer:scroll type (see 'ScrollType' enum)): boolean:true if scroll of the requested type is needed

--130
-- SelectListItemByIndex(light_userdata:handle,integer:index(1-based)): nothing

--131
-- SelectListItemByName(light_userdata:handle,string:name_value): nothing

--132
-- SelectListItemByValue(light_userdata:handle,string:value): nothing

--133
-- Set(light_userdata:handle, string:property_name, string:property_value[,Enums.ChangeLevel:override change level]): nothing

--134
-- SetChildren(light_userdata:handle_of_parent, string:property_name, string:property_value [,bool:recursive (default: false)]): nothing

--135
-- SetContextSensHelpLink(light_userdata:handle to UIObject, string:topic name): nothing

--136
-- SetEmptyListItem(light_userdata:handle,integer:index[,bool:empty(default:true)]): nothing

--137
-- SetEnabledListItem(light_userdata:handle,integer:index[,bool:enable(default:true)]): nothing

--138
-- SetFader(light_userdata:handle, {[double:value[0..100]], [bool:faderDisabled], [string:token(Fader*)]}): nothing

--139
-- SetListItemAppearance(light_userdata:handle,integer:index,{[left={...AppearanceData...}][right={...AppearanceData...}]}): nothing

--140
-- SetListItemName(light_userdata:handle,integer:index,string:name): nothing

--141
-- SetListItemValueStr(light_userdata:handle,integer:index,string:value): nothing

--142
-- SetPositionHint(light_userdata:handle,integer:x,integer:y): nothing

--143
-- ShowModal(light_userdata:handle,callback:function): nothing

--144
-- ToAddr(light_userdata:handle): string:address

--145
-- UIChildren(light_userdata:handle to UIObject): array of references to children of passed UIObject

--146
-- UILGGetColumnAbsXLeft(light_userdata:handle to UILayoutGrid, idx:integer): x:integer

--147
-- UILGGetColumnAbsXRight(light_userdata:handle to UILayoutGrid, idx:integer): x:integer

--148
-- UILGGetColumnWidth(light_userdata:handle to UILayoutGrid, idx:integer): size:integer

--149
-- UILGGetRowAbsYBottom(light_userdata:handle to UILayoutGrid, idx:integer): y:integer

--150
-- UILGGetRowAbsYTop(light_userdata:handle to UILayoutGrid, idx:integer): y:integer

--151
-- UILGGetRowHeight(light_userdata:handle to UILayoutGrid, idx:integer): size:integer

--152
-- WaitChildren(light_userdata:handle to UIObject, integer:expected amount of children, [, number:seconds to wait]): boolean:true on success, nil on timeout or if object doesn't exist

--153
-- WaitInit(light_userdata:handle to UIObject[, number:seconds to wait[, bool: force to re-init, default - false]]): boolean:true on success, nil on timeout or if object doesn't exist