return function()
    -- Deletes the variable called 'myUserVar' in the 'UserVars' variable set.
    local success = DelVar(UserVars(), "myUserVar")
    -- Prints the outcome of the deletion outcome.
    if success then
        Printf("Variable is deleted.")
    else
        Printf("Variable is NOT deleted!")
    end
end