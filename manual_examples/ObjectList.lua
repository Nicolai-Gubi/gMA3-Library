-- ObjectList(string:address): {light_userdata:handles}
return function()
    -- Create a list of handles based on the "Fixture 1 Thru 10" selection and store it in a table. 
    local myObjects = ObjectList("Fixture 1 Thru 10")
    -- If the selection returned a table, then go through all elements and print information of the object.
    if myObjects~= nil then
        for i in pairs(myObjects) do
            Printf("Fixture: " .. myObjects[i].name .. " - Patch: " ..myObjects[i].patch)
        end
    else
        ErrPrintf("An error occured. Does Fixture 1 Thru 10 exist?")
    end
end