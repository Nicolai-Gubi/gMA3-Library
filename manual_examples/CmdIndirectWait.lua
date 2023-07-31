return function()
    --Print something
    Printf("1")
    --Use the 'CmdIndirectWait' to open a pop-up
    CmdIndirectWait("Menu DisplayConfig", nil, GetDisplayByIndex(2))
    --Print something else
    Printf("2")
end