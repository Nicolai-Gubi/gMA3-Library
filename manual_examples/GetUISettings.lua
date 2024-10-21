return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the name of the editor for the sequence object. 
    local seqSettings = selectedSequence:GetUISettings()
    -- Print some feedback.
    if seqSettings ~= nil then
        Printf("The name of the settings is: " .. seqSettings)
    else
        Printf("The object doesn not appear to have an editor.")
    end
end