--Import(string:file_name): table:content
return function ()
    -- Get the path for the exported table.
    local importPath = GetPath(Enums.PathType.Library) .. "/BuildDetails.xml"
    -- Check if the file exist and print relevant feedback.
    if importPath == nil then
        -- File does not exist.
        ErrPrintf("The desired file does not exist. Please add it or adjust the requested file name.")
    else
        -- Import the table.
        local importedTable = Import(importPath)
        -- Check if the import returned something and print relevant feedback.
        if importedTable == nil then
            -- Import didn't return anything.
            ErrPrintf("The import failed.")
        else
        -- Print some of the table content.
        Printf("CompileDate: " .. importedTable.CompileDate)
        Printf("CompileTime: " .. importedTable.CompileTime)
        Printf("BigVersion: " .. importedTable.BigVersion)
        Printf("HostType: " .. importedTable.HostType)
        Printf("HostSubType: " .. importedTable.HostSubType)
        Printf("CodeType: " .. importedTable.CodeType)
        end
    end
end