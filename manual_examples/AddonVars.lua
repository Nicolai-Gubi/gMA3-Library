return function()
    -- Stores the handle to a variable set connected to the addon named 'Demo'.
    local variableSet = AddonVars("Demo")
    -- Check if the return is nil and print an error message
    if variableSet == nil then
        ErrPrintf("The variable set does not exists")
        return
    end
    Printf("=============== START OF DUMP ===============")
    variableSet:Dump()
    Printf("================ END OF DUMP ================")
end