--SelectedLayout(nothing): light_userdata:handle
return function ()
    -- The following prints the dump for the selected layout object
    Printf("=============== START OF DUMP ===============")
    SelectedLayout():Dump()
    Printf("================ END OF DUMP ================")
end