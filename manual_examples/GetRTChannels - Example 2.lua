return function()
    -- Get a handle to the first fixture in the current selection
    local fixtureHandle = GetSubfixture(SelectionFirst())
    if fixtureHandle == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end
    -- Creates a table of handles to the RT channels of the first selected fixture.
    local rtChannels = GetRTChannels(fixtureHandle, true)
    if rtChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end
    -- Print DMX addresses of the RT Channels for the fixture
    for key,value in ipairs(rtChannels) do
        Printf("List index number ".. key .. ": RTChannel Index = %i, Coarse DMX addr. = %s, Fine DMX addr. = %s", value.INDEX, value.COARSE, value.FINE)
    end
end