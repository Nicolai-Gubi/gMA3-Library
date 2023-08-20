return function()
    -- Get the Attribute index and UIChannel indexes
    local attributeIndex = GetAttributeIndex("Dimmer")
    local uiChannelIndex = GetUIChannelIndex(SelectionFirst(),attributeIndex)
    -- End the function if any of the index return nil
    if (attributeIndex == nil or uiChannelIndex == nil) then
        ErrPrintf("Something went wrong, maybe your first selected fixture don't have a Dimmer - Please try again")
        return
    end
    Printf("The UI Channel Index is " .. uiChannelIndex)
end