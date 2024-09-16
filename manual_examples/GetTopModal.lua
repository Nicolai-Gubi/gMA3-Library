--GetTopModal(nothing): light userdata:handle to top modal overlay
return function()
    -- Open a Modal / Pop-up.
    Cmd('Menu "StagePopup"')
    -- Add a small wait.
    coroutine.yield({activeShowstatus=0.2})
    -- Get the handle for the modal / pop-up. 
    local modalHandle = GetTopModal()
    -- If there is a handle then dump all information else print en error feedback.
    if modalHandle ~= nil then
        Printf("=============== START OF DUMP ===============")
        modalHandle:Dump()
        Printf("================ END OF DUMP ================")
    else
        ErrPrintf("The Modal UI object could not be found.")
    end
    -- Close the modal / pop-up by pressing the Escape key.
    Keyboard(1,'press','Escape')
    Keyboard(1,'release','Escape')
end