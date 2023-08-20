return function()
    -- Creates a table of indexes of the UI channels of the first selected fixture.
    local uiChannels = GetUIChannels(SelectionFirst())
    if uiChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end
    for key,value in ipairs(uiChannels) do
        Printf("List index number ".. key .. " :  UIChannel Index = " .. value)
	end
end