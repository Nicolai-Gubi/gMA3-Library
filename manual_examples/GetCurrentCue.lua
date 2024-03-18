return function()
    -- Dumps information about the last activated cue in the selected sequence
    Printf("=============== START OF DUMP ===============")
    GetCurrentCue():Dump()
    Printf("================ END OF DUMP ================")
end