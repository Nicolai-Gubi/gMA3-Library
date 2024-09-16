-- IsClassDerivedFrom(string:derived_name, string:base_name): boolean:result
return function()
    -- Set the value of the two strings.
    local derivedName = "PoolTitleButton"
    local baseName = "UIObject"
    -- Check if the derivedName is the name of a class derived from the baseName class.
    local isDerived = IsClassDerivedFrom(derivedName, baseName)
    -- Provide feedback.
    if isDerived then
        Printf(derivedName .. " is derived from " .. baseName)
    else
        Printf(derivedName .. " is not derived from " .. baseName)
    end
end