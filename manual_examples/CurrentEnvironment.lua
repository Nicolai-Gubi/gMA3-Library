return function()
    -- Dumps information about the current environment
    Printf("=============== START OF DUMP ===============")
    CurrentEnvironment():Dump()
    Printf("================ END OF DUMP ================")
end