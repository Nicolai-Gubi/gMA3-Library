return function()
    -- 'BuildDetails()' creates a table with information about the software build.
    local build = BuildDetails()
    --The path and filename is stored in a variable.
    local exportPath = GetPath(Enums.PathType.Library) .. "/BuildDetails.xml"
    --The actual export (in xml format) using the path and the table - the result boolean stored in a variable.
    local success = Export(exportPath, build)
    --Print feedback about the export path.
    if success then
        Printf("The export was stored at: " .. exportPath)
    else
        Printf("The export failed")
    end
end