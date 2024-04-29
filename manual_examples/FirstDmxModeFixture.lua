-- FirstDmxModeFixture(light_userdata:dmxmode): light_userdata:fixture
return function ()
    -- Get the handle for the Dimmer fixture.
    local fixtureTypeHandle = Patch().FixtureTypes['Dimmer']

    -- Check if fixture type returned something and provide feedback.
    if fixtureTypeHandle == nil then
        ErrPrintf("The fixture type does not exist in this show. Try adding it or edit this plugin.")
    else
        -- Get the handle for the DMX mode of a Dimmer fixture.
        local fixtureDMXMode = fixtureTypeHandle.DMXModes["Mode 0"]

        -- Check if fixtureDMXMode returned something and provide feedback.
        if fixtureDMXMode == nil then
            ErrPrintf("The fixture type does not contain a 'Mode 0' DMX mode. Try adding it or edit this plugin.")
        else
            -- Dumps information about the first fixture matching the DMX mode.
            Printf("=============== START OF DUMP ===============")
            FirstDmxModeFixture(fixtureDMXMode):Dump()
            Printf("================ END OF DUMP ================")
        end
    end
end