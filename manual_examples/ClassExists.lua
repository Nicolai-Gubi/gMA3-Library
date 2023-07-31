return function()
    -- Store a string with the class name
    local className = "Display"
    -- Check if the class exists and then provide proper feedback
    if ClassExists(className) then
        Printf("The class '%s' exists", className)
    else
        Printf("The class '%s' does not exists", className)
    end
end
