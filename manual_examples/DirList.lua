--DirList(string:path[ ,string:filter]): table of {name:string, size:int, time:int}
return function ()
    -- Get the path to the show files.
    local path = GetPath(Enums.PathType.Showfiles)
    -- Make a filter to only list .show files.
    local filter = "*show"
    -- Use teh DirList function to get a table of the files.
    local returnTable = DirList(path, filter)

    -- Print the information of the files in the returned table.
    for _, value in pairs(returnTable) do
        Printf(value['name'] .. " - Size: " .. value['size'] .. " - Time: " .. value['time'])
    end
end