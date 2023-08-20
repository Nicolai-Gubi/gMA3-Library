return function ()
    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is the title",
        message = "This is a message\nThat can have multiple lines",
        commands = defaultCommandButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
end