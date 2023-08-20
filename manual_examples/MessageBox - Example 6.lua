return function ()
    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }
    -- A table with selector buttons
    -- The buttons will be displayed alphabetically in the pop-up based on name
    local selectorButtons = {
        { name="Swipe Selector", selectedValue=1, type=0, values={["Swipe1"]=1,["Swipe2"]=2}},
        { name="Radio Selector", selectedValue=2, type=1, values={["Radio1"]=1,["Radio2"]=2}},
        { name="Another Radio", selectedValue=3, type=1, values={["Radio3"]=3,["Radio4"]=4}}
    }

    -- State button to show grouping with swipe Selector button
    local stateButton = {
        {name = "State Button", state = false},
    }
    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is input fields",
        message = 'Change the values in the input fields and click "Ok"',
        commands = defaultCommandButtons,
        states = stateButton,
        selectors = selectorButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
    -- Print a list with the values of the selection buttons
    for name,value in pairs(returnTable.selectors) do
        Printf("Input '%s' = '%s'",name,tostring(value))
    end
    -- Print a list with the state of the stateButton
    for name,state in pairs(returnTable.states) do
        Printf("State '%s' = '%s'",name,tostring(state))
    end
end