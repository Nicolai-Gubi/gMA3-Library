return function ()
    -- This creates a small pop-up with a single button.
    local returnTable = MessageBox(
        {
            title = "Please confirm This",
            commands = {{value = 1, name = "Confirm"}}
        }
    )

    -- Print the content of the returned table. 
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
end