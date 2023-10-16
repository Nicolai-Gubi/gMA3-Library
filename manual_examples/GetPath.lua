return function()
    -- This prints a path based on a string input and it creates the folder if it does not exists.
    Printf("Path of show files (string) is: " .. GetPath("shows", true))
    -- This prints the path based on an integer. The integer is looked-up using the 'PathType' enum.
    Printf("Path of show files (integer) is: " .. GetPath(Enums.PathType.Showfiles))
end