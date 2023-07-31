return function()
    --Print something
    Printf("1")
    --Use the 'CmdIndirect' to open a pop-up
    CmdIndirect("Menu DisplayConfig", nil, GetDisplayByIndex(2))
    --Print something else
    Printf("2")
end
