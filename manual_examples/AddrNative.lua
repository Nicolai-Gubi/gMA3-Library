---Object
return function()
    -- Stores the handle to the first sequence.
    local mySequence = DataPool().Sequences[1]
    -- Print the native address.
    Printf("The full address is: " .. mySequence:AddrNative())
    -- Stores a handle to the default DataPool.
    local myDataPool = DataPool()
    -- Print the native address to the datapool using the default datapool as a base.
    Printf("The address in the datapool is: " .. mySequence:AddrNative(myDataPool))
    -- Print the native address to the datapool, using the default datapool as a base, with names as strings.
    Printf("The address in the datapool with quotes around the names is: " .. mySequence:AddrNative(myDataPool, true))
end