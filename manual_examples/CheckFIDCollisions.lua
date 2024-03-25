-- Object-Free
return function()
    -- Create a variable with the FID you want to check.
    local myFID = 2001
    -- Create a variable with the number of subsequent ID's to also check.
    local myCount = 10
    -- Create a variable with the FixtureIDType you want to check. This is optional.
    -- Default value is 0. This is the "Fixture" type.
    -- Valid integers are:
    --- 0 = Fixture
    --- 1 = Channel
    --- 2 = Universal
    --- 3 = Houseligths (default name)
    --- 4 = NonDim (default name)
    --- 5 = Media (default name)
    --- 6 = Fog (default name)
    --- 7 = Effect (default name)
    --- 8 = Pyro (default name)
    --- 9 = MArker
    --- 10 = Multipatch
    local myType = 0

    -- Check if the count is more than one.
    if myCount > 1 then
        -- Check if there is a collision and print valid feedback.
        if CheckFIDCollision(myFID, myCount, myType) then
            Printf("The FID " .. myFID .. " to " .. (myFID + myCount) .. " is available.")
            return
        else
            Printf("The FID " .. myFID .. " to " .. (myFID + myCount) .. " gives an FID collision.")
            return
        end
    else
        if CheckFIDCollision(myFID, nil, myType) then
            Printf("The FID " .. myFID .. " is available.")
            return
        else
            Printf("The FID " .. myFID .. " gives an FID collision.")
            return
        end
    end
end