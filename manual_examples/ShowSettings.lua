return function ()
    -- The following prints the dump for the object for the show settings
    Printf("=============== START OF DUMP ===============")
    ShowSettings():Dump()
    Printf("================ END OF DUMP ================")
end