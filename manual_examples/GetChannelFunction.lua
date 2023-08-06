return function()
    -- Select the first fixture in the current selection.
    local subfixtureIndex = SelectionFirst()
    -- End the function if there is no selection.
    if subfixtureIndex == nil then
        ErrPrintf("Please select a fixture with a Dimmer")
        return
    end
    -- Get the Attribute index and UIChannel index.
    local attributeIndex = GetAttributeIndex("Dimmer")
    local uiChannelIndex = GetUIChannelIndex(subfixtureIndex,attributeIndex)
    Printf("The UIChannel Index is: %i. The Attribute Index is: %i. ",uiChannelIndex, attributeIndex)
    -- End the function if any of the index return nil.
    if (attributeIndex == nil or uiChannelIndex == nil) then
        ErrPrintf("Something wrong happened, maybe your first selected fixture don't have a Dimmer - Please try again")
        return
    end
    -- The following prints the dump for the dimmer channel function.
    Printf("=============== START OF DUMP ===============")
    GetChannelFunction(uiChannelIndex,attributeIndex):Dump()
    Printf("================ END OF DUMP ================")
end