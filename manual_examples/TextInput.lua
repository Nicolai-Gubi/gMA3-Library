return function()
    -- Create a pop-up with the title and an input field containing some default text
    -- The returned text is store in a Lua variable
    local input = TextInput("This is the title","Please provide your input here")
    -- Print the returned text value
    Printf("You entered this message: %s",tostring(input))
end