--SelectedTimer(nothing): light_userdata:handle
return function ()
    -- The following prints the dump for the selected timer object
    local myTimer = SelectedTimer()
    if myTimer ~= nil then
        Printf("=============== START OF DUMP ===============")
        myTimer:Dump()
        Printf("================ END OF DUMP ================")
    end
end