--SelectedTimecode(nothing): light_userdata:handle
return function ()
    -- The following prints the dump for the selected timecode object
    local myTimecodeShow = SelectedTimecode()
    if myTimecodeShow ~= nil then
        Printf("=============== START OF DUMP ===============")
        myTimecodeShow:Dump()
        Printf("================ END OF DUMP ================")
    end
end