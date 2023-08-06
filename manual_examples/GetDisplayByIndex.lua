return function()
    -- Get the index number for "Display 1"
    local displayIndex = GetDisplayCollect()["Display 1"].INDEX
    -- return error text in case the index number is nil
    if displayIndex == nil then
        ErrPrintf('Something went wrong. It appears that there is no "display 1"')
        return
    end
    -- Dump all information about the display with the index number
    Printf("=============== START OF DUMP ===============")
    GetDisplayByIndex(displayIndex):Dump()
    Printf("================ END OF DUMP ================")
end