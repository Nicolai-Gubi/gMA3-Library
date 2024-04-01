return function ()
    -- The function returns the handle to the fixture at the current command line destination.
    -- Change to the "FixtureType" destination.
    Cmd("ChangeDestination FixtureType")
    -- Change to the second fixture type in the show.
    Cmd("ChangeDestination 2")
    -- Dump information about the Fixture Type handle. 
    Printf("=============== START OF DUMP ===============")
    FixtureType():Dump()
    Printf("================ END OF DUMP ================")
    -- Return the command line destination to the Root.
    Cmd("ChangeDestination Root")
end