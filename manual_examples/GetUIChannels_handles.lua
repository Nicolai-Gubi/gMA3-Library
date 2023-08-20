return function()
    local fixtureHandle = GetSubfixture(SelectionFirst())
    -- Creates a table of handles to the UI channels of the first selected fixture.
    local uiChannels = GetUIChannels(fixtureHandle, true)
    if uiChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end
    for key,value in pairs(uiChannels) do
        Printf("List index number ".. key .. ": UIChannel Index = %i, (Sub)Attribute = %s", value.INDEX-1, value.SUBATTRIBUTE)
	end
end