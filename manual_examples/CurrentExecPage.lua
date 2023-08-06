return function()
    -- Dumps information about the current executor page
    Printf("=============== START OF DUMP ===============")
    CurrentExecPage():Dump()
    Printf("================ END OF DUMP ================")
end