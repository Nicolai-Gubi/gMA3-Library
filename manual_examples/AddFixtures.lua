return function()
    -- Change the command line destination to the correct patch location.
    Cmd("ChangeDestination Root")
    -- Enter the "ShowData".
    Cmd('ChangeDestination 13')
    -- Enter the "Patch".
    Cmd("ChangeDestination 9")
    -- Enter the "Stages".
    Cmd("ChangeDestination 6")
    -- Enter the first stage object.
    Cmd("ChangeDestination 1")
    -- Enter the "Fixtures" part of the stage. 
    Cmd("ChangeDestination 2")
    
    -- Create a table.
    local myAddFixtureTable = {}
    -- Set the mode to a 8-bit Dimmer fixture type. 
    myAddFixtureTable.mode = Patch().FixtureTypes.Dimmer.DMXModes["Mode 0"]
    -- Set the amount of fixtures.
    myAddFixtureTable.amount = 1
    -- Set the FID for the fixture.
    myAddFixtureTable.fid = "303"
    -- Set the IdType - it is not needed if the type is "Fixture".
    myAddFixtureTable.idtype = "Channel"
    -- Set the CID - Use only this when the "idtype" is different than Fixture.
    myAddFixtureTable.cid = "303"
    -- Set the name of the fixture.
    myAddFixtureTable.name = "AddedDimmer 303"
    -- Create a patch table with an address.
    myAddFixtureTable.patch = {"10.001"}

    -- Add the fixture to the patch using the table data. Store the result in a local variable.
    local success = AddFixtures(myAddFixtureTable)
    
    -- Provide some feedback.
    if success ~= nil then
        Printf("Fixture " .. myAddFixtureTable.fid .. " is added with patch address " .. myAddFixtureTable.patch[1])
    else
        Printf("AddFixture failed!")
    end
    
    -- Return the command line to the root destination.
    Cmd("ChangeDestination Root")
end