return function ()
    -- This variable contains the table used as argument for the messagebox
    local messageTable = {
        title = "Do not worry",
        message = "This message will self destruct\nGoodbye!",
        timeout = 3000,
        timeoutResultCancel = false,
        timeoutResultID = 99,
    }

    -- This creates the messagebox pop-up and store the return table in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)
end