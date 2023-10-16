--Object
return function()
    -- Stores the handle in a variable.
    local mySequence = DataPool().Sequences[1]
    -- Converts the handle to the address and store in variable.
    local mySequenceAddress = mySequence:ToAddr()
    -- Send a 'Go' command with the address appended.
    Cmd("Go %s", mySequenceAddress)
end