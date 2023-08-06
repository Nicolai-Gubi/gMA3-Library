return function()
    -- This example dumps all information about the object who currently got focus.
    Printf("=============== START OF DUMP ===============")
    GetFocus():Dump()
    Printf("================ END OF DUMP ================")
end