return function()
	-- Store the return in a local variable
    local fixtureIndex, gridX, gridY, gridZ = SelectionFirst();

    -- Cancel the plugin if no fixture is selected
    assert(fixtureIndex,"Please select a fixture and try again.");

    -- Print the index number of the first fixture in the selection
    Printf("First selected fixture has index number: "..fixtureIndex
        .." and gridX value: "..gridX
        .." and gridY value: "..gridY
        .." and gridZ value: "..gridZ);
end