--GetPathOverrideFor(string:path type or integer:path_type(Enums.PathType), string:path[ ,boolean:create]): string:overwritten_path
return function ()
    -- Set a path for the first removable media.
    -- Set the initial value to nil.
    local myBasePath = nil
    -- Itereate the drives and find the first 'Removeable' drive and store the path.
    for _, value in ipairs(Root().Temp.DriveCollect) do
        local driveType = value.drivetype
        if driveType == "Removeable" then
            myBasePath = value.path
            break
        end
    end
    -- If no removeable drive was found, then provide feedback and exit the function.
    if myBasePath == nil then
        ErrPrintf("No removeable drive could be found. Please insert one and try again")
        return
    end

    -- Get the integer for the UserMacros path type.
    local myPathType = Enums.PathType.UserMacros

    -- Gey the string for the path override.
    local myOverridePath = GetPathOverrideFor(myPathType, myBasePath)
    -- Print the returned string.
    Printf("The path is: " .. myOverridePath)
end