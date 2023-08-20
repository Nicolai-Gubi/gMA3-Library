return function ()
    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }
    -- A table with three state buttons 
    -- The buttons will be displayed alphabetically in the pop-up
    local stateButtons = {
        {name = "State B", state = false},
        {name = "State A", state = false},
        {name = "New State", state = false}
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is state buttons",
        message = 'Toggle the states and click "Ok"',
        commands = defaultCommandButtons,
        states = stateButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
    
    -- Print a list with the state of the stateButtons
    for name,state in pairs(returnTable.states) do
        Printf("State '%s' = '%s'",name,tostring(state))
    end
end