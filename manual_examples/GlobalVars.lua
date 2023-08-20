return function()
    -- Stores a local Lua variable with the handle for the global variable set.
    local variableSet = GlobalVars()
    -- Sets a global variable with an integer value using the SetVar() function.
    SetVar(variableSet, "myGlobalVar", 42)
    -- Prints the global variable using the GetVar() function.
    Printf("The value  of myGlobalVar is: " .. GetVar(variableSet, "myGlobalVar"))
    -- Deletes the global variable using the DelVar() function.
    DelVar(variableSet, "myGlobalVar")
end