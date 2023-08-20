return function ()
    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }
    -- A table with three input fields
    -- The fields will be displayed alphabetically in the pop-up based on name
    local inputFields = {
        {name = "Numbers Only", value = "1234", whiteFilter = "0123456789", vkPlugin = "NumericInput"},
        {name = "Text Only", value = "abcdef", blackFilter = "0123456789"},
        {name = "Maximum 10 characters", value = "", maxTextLength = 10}
    }
    -- Possible vkPlugin values:
    -- - "TextInput" : same as default - standrd on-screne keyboard
    -- - "TextInputNumOnly" : text input but only with number buttons
    -- - "TextInputNumOnlyRange" : text input but only with number and related range buttons 
    -- - "TextInputTimeOnly" : text input styled for time input - includes buttons for time values
    -- - "NumericInput" : general number input
    -- - "CueNumberInput" : number input styled for cue number
    -- - "RelCueNumberInput" : number input with the relative "delta" button
    -- - "IP4Prefix" : designed for inputting an IPv4 address allowing CIDR notation

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is input fields",
        message = 'Change the values in the input fields and click "Ok"',
        commands = defaultCommandButtons,
        inputs = inputFields,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
    -- Print a list with the values of the input fields
    for name,value in pairs(returnTable.inputs) do
        Printf("Input '%s' = '%s'",name,tostring(value))
    end
end