-- Object
return function()
    -- Stores the handle of the selected sequence.
    local selectedSequence = SelectedSequence() 

    -- The following 'if' gives different feedback based on the playback status.
    if selectedSequence:HasActivePlayback() then
        Printf("Sequence '" ..selectedSequence.name.. "' has active playback.")
    else
        Printf("Sequence '" ..selectedSequence.name.. "' has NO active playback.")
    end
end