-- Object
return function()
    --SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    --The path is stored in a variable.
    local exportPath = GetPath(Enums.PathType.UserSequences)
    --The actual export function.
    selectedSequence.Export(selectedSequence, exportPath, "mySelectedSequence2.xml")
    --Print some feedback.
    Printf("The sequence is exported to: " .. exportPath)
end