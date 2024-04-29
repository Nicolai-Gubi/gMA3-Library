--CreateMultiPatch({light_userdata:fixture_handles}, integer:count[ ,string:undo_text]): integer:amount_of_multi-patch_fixtures_created
return function()
    -- Enter Patch.
    Cmd("ChangeDestination Root");
    -- Enter the SetupPatch.
    Cmd("ChangeDestination 'ShowData'.'Patch'");

    -- Get the handle for the first fixture in the patch.
    local myFixture = Patch().Stages[1].Fixtures[2]
    -- Add the handle a list element in an table.
    local myFixtureTable = {myFixture}
    -- Add a variable with the amount of multipatch fixtures needed.
    local multiPatchAmount = 2

    -- Count the number of elements in the fixture table and store in a variable.
    local count = 0
    for _ in pairs(myFixtureTable) do
         count = count + 1
    end
    -- Create an unto text string.
    local undoText = string.format("Create %d multipatch fixtures for up to %d fixtures", multiPatchAmount, count)

    -- Create the multipatch fixtures to the each fixture handle in the table and store the returned value.
    local multiPatchAmount = CreateMultiPatch(myFixtureTable, multiPatchAmount, undoText)
    if multiPatchAmount ~= nil then
        Printf(multiPatchAmount .. " multi patch objects was created")
    else
        Printf("An error occured")
    end

    -- Return the command line destination to the root.
    Cmd("ChangeDestination Root")
end