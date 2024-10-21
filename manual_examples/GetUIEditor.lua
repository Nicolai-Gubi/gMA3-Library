return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the name of the editor for the sequence object. 
    local seqEditor = selectedSequence:GetUIEditor()
    -- Print some feedback.
    if seqEditor ~= nil then
        Printf("The name of the editor is: " .. seqEditor)
    else
        Printf("The object doesn not appear to have an editor.")
    end
end