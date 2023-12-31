return function ()
    -- Check for a fixture selection, by returning an index for the first fixture
    if (SelectionFirst()) then
        -- There is a fixture selection, store the index for the first fixture 
        local fixtureIndex = SelectionFirst()
        -- Dump all information about the fixture
        Printf("=============== START OF DUMP ===============")
        GetSubfixture(fixtureIndex):Dump()
        Printf("================ END OF DUMP ================")
    else
        -- There needs to be a selection of at least one fixture
        Printf("Please select a fixture")
    end
end