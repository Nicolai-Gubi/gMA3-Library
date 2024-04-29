--GetScreenContent(light_userdata:handle to ScreenConfig): light_userdata:handle
return function()
    -- Create a handle for the current screen configuration.
    local myCurrentScreenConfig = CurrentScreenConfig()
    -- Create a handle for the screen content based on the screen configuration.
    local myScreenContent = GetScreenContent(myCurrentScreenConfig)
    -- Print the Dump of the handle.
    Printf("=============== START OF DUMP ===============")
    myScreenContent:Dump()
    Printf("================ END OF DUMP ================")
end