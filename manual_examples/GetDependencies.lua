return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the dependcies for the sequence.
    local seqDependencies = selectedSequence:GetDependencies()
    -- Check if there are any dependicies and output a relevant feedback.
    if seqDependencies ~= nil then
        -- There is a dependency table returned. Print a dump of the first table element.
        Printf("=============== START OF DUMP ===============")
        seqDependencies[1]:Dump()
        Printf("================ END OF DUMP ================")
    else
        Printf("No dependencies found")
    end
end