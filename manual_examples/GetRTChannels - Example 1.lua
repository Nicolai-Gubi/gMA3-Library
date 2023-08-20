return function()
    -- Get the index number for the first fixture in the current selection 
    local fixtureIndex = SelectionFirst()
    -- Get the indexes of the RT channels
    local rtChannels = GetRTChannels(fixtureIndex, false)
    -- Print an error message if returnd table is nil
    if rtChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end
    -- Print the table content
    for key,value in ipairs(rtChannels) do
        Printf("List index number ".. key .." : RTChannel index number = ".. value)
	end
end