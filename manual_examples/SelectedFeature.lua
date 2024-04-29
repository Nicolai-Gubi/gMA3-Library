return function ()
    -- The following prints the dump for the selected feature object
    Printf("=============== START OF DUMP ===============")
    SelectedFeature():Dump()
    Printf("================ END OF DUMP ================")
end