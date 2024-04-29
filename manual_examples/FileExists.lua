--FileExists(string:path): boolean:result
return function ()
    -- Get the path to the show files.
    local path = GetPath(Enums.PathType.Showfiles)
    -- Get a table of files at the path.
    local dirTable = DirList(path)
    -- Get the file name for the first file.
    local firstFile = dirTable[1]['name']
    -- Create a string with the path and filename.
    local filepath = string.format("%s%s%s", path, GetPathSeparator(), firstFile)

    -- Check if the file exist and return useful feedback.
    if FileExists(filepath) then
        Printf('The file "' .. firstFile .. '" exsits at path "' .. path .. '"')
    else
        Printf('The file "' .. firstFile .. '" does not exsits')
    end
end