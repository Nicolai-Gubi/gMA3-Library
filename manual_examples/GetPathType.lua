--GetPathType(light_userdata:target_object[ ,integer:content_type (Enums.PathContentType)]): string:path_type_name
return function ()
    local myPathTypeName = GetPathType(CurrentUser())
    if myPathTypeName ~= nil then
        Printf("The name of the path type is: " .. myPathTypeName)
    else
        ErrPrintf("There was an error getting the current user.")
    end
end