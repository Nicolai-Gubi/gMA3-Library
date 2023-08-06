return function()
    -- Dumps information about the current user
    Printf("=============== START OF DUMP ===============")
    CurrentUser():Dump()
    Printf("================ END OF DUMP ================")
end