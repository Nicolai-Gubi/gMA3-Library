--Object
return function()
    --SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    --The path is stored in a variable.
    local path = GetPath(Enums.PathType.UserSequences)
    --The actual import function.
    selectedSequence:Import(path, "mySelectedSequence.xml")
    --Print some feedback.
    Printf("The sequence is imported from: " .. path)
end