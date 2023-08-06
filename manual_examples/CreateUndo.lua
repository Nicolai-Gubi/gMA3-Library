return function()
    -- Create the undo group.
    local MyNewUndo = CreateUndo("MySelection")
    -- Make some command line actions linked to the undo.
    Cmd("ClearAll", MyNewUndo)
    Cmd("Fixture 1", MyNewUndo)
    Cmd("Fixture 2", MyNewUndo)
    Cmd("Fixture 5", MyNewUndo)
    Cmd("Fixture 7", MyNewUndo)
    -- Closing the undo group and store it's return in a variable.
    local closeSuccess = CloseUndo(MyNewUndo)
    -- Print the feedback from the closing action - 1 = Success / 0 = Failure.
    if (closeSuccess == 1) then
        Printf("The undo was closed successfully")
    else
        Printf("The undo was not closed correctly")
    end
end