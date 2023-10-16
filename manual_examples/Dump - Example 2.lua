--Object
return function ()
    -- Dump() is called with function as an argument
    Printf("=============== START OF DUMP ===============")
    SelectedSequence().Dump(SelectedSequence())
    Printf("================ END OF DUMP ================")
end