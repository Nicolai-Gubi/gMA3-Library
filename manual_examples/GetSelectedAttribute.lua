return function()
    -- This example dumps all information about the currently selected attribute
    Printf("=============== START OF DUMP ===============")
    GetSelectedAttribute():Dump()
    Printf("================ END OF DUMP ================")
end