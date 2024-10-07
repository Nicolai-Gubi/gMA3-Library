return function()
    -- Stores the handle in a variable.
    local mySequence = DataPool().Sequences[1]
    if mySequence ~= nil then
        -- Converts the handle to the address and store in variable.
        local mySequenceAddressName = mySequence:ToAddr(true)
        local mySequenceAddress = mySequence:ToAddr(false)
        -- Print the address to the Command Line History.
        Printf("The named address of the sequence is: " .. mySequenceAddressName)
        Printf("The system address of the sequence is: " .. mySequenceAddress)
        -- Send a 'Go' command with the address appended.
        Cmd("Go %s", mySequenceAddress)
    else
        ErrPrintf("The sequence could not be found")
    end
end