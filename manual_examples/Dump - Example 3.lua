--Object
return function ()
    --Stores the handle for the selected sequence in a local variable.
    local mySeqHandle = SelectedSequence()
    -- Dump() is called on the variable.
    Printf("=============== START OF DUMP ===============")
    mySeqHandle:Dump()
    Printf("================ END OF DUMP ================")
end