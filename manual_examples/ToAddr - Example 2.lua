--Object
return function()
    -- Stores the handle in a variable.
    local mySequence = DataPool().Sequences[1]
    -- Converts the handle to the address and store in variable.
    local mySequenceAddress = ToAddr(mySequence)
    -- Send a go command with the address appended.
    Cmd("Go %s", mySequenceAddress)
end
