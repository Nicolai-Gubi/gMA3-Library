--GetTopOverlay(integer:display_index): light userdata:handle to top overlay on the display
return function()
    -- Open the MenuSelector overlay.
    Cmd('Menu "MenuSelector')
    -- Add a small delay.
    coroutine.yield({activeShowstatus=0.2})
    -- Get the handle for the overlay on the display with index 1.
    local overlayHandle = GetTopOverlay(1)
    -- Add a small delay.
    coroutine.yield({activeShowstatus=0.2})
    -- Close the MenuSelector overlay.
    Cmd('Menu "MenuSelector')
    -- Check if there is a handle and print appropriate feedback.
    if overlayHandle ~= nil then
        Printf("=============== START OF DUMP ===============")
        overlayHandle:Dump()
        Printf("================ END OF DUMP ================")
    else
        ErrPrintf("The Overlay UI object could not be found.")
    end
end