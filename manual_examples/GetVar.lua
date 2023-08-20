return function()
    -- Get the value from a user variable called "myUserVar" - assuming it already exists
    local varValue = GetVar(UserVars(), "myUserVar")
    -- Print en error feedback or the value of the variable
    if varValue == nil then
        Printf("Variable returns nothing!")
    else
        Printf("Variable value is: " .. varValue)
    end
end