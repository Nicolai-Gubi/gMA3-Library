return function()
    -- Dumps information about the current screen configuration
    Printf("=============== START OF DUMP ===============")
    CurrentScreenConfig():Dump()
    Printf("================ END OF DUMP ================")
end