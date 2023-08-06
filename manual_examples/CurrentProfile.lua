return function()
    -- Dumps information about the current executor page
    Printf("=============== START OF DUMP ===============")
    CurrentProfile():Dump()
    Printf("================ END OF DUMP ================")
end