return function()
    -- Dumps information about the datapool object.
    Printf("=============== START OF DUMP ===============")
    DataPool():Dump()
    Printf("================ END OF DUMP ================")
    -- Prints the name of the first sequence.
    Printf("Name of sequence 1: " .. DataPool().Sequences[1].Name)
end