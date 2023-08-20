return function()
    -- Convert the handle of the currently selected sequence to an integer
    local handleInt = HandleToInt(SelectedSequence())
    -- Print the handle integer
    Printf("The handle integer number of the selected sequence: %i", HandleToInt(SelectedSequence()))
    -- Convter the integer back to a hanndle and use it to get the sequence name
    Printf("The name of the selected sequence is: %s", IntToHandle(handleInt).name)
end