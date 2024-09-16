-- GetUIObjectAtPosition(integer:display_index, {x,y}:position): light_userdata:handle to UI object or nil
return function()
    -- Get the index number for "Display 1"
    local displayIndex = GetDisplayCollect()["Display 1"].INDEX
    -- Create a table with X and Y position
    local positionTable = {}
    positionTable.x = 1000
    positionTable.y = 500
    -- Get the UI object handle
    local uiObjectAtPositionHandle = GetUIObjectAtPosition(displayIndex,positionTable)
    -- Dump all information about the display with the index number if not nil
    if uiObjectAtPositionHandle == nil then
        Printf("The returned value was not a valid handle.")
        return
    end
    -- Draw a pointer at the posiiton for 5 seconds
    DrawPointer(displayIndex,positionTable,5000)
    --Dump of the UIObject
    Printf("=============== START OF DUMP ===============")
    uiObjectAtPositionHandle:Dump()
    Printf("================ END OF DUMP ================")
end