return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the references for the sequence.
    local seqReferences = selectedSequence:GetReferences()
    -- Check if there are any references and output a relevant feedback.
    if seqReferences ~= nil then
        -- There is a reference table returned. Print a dump of the first table element.
        Printf("=============== START OF DUMP ===============")
        seqReferences[1]:Dump()
        Printf("================ END OF DUMP ================")
    else
        Printf("No references found")
    end
end