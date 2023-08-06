return function()
    -- Store a handle to display 1 (child 1 of the default displays).
    local display1 = DefaultDisplayPositions():Children()[1]
    -- Dumps information about the display.
    Printf("=============== START OF DUMP ===============")
    display1:Dump()
    Printf("================ END OF DUMP ================")
end