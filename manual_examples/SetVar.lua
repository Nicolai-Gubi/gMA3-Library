return function()
    -- Sets the value of user variable "myUserVar" to "Hello World" and store the returned boolean in a Lua variable
    local success = SetVar(UserVars(), "myUserVar", "Hello World")
    -- Prints the ressult
    if success then
        Printf("Variable is stored.")
    else
        Printf("Variable is NOT stored!")
    end
end