return function()
    -- This example dumps all information about the display object who currently got focus.
    Printf("=============== START OF DUMP ===============")
    GetFocusDisplay():Dump()
    Printf("================ END OF DUMP ================")
end