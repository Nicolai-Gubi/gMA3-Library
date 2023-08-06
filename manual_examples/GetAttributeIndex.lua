return function()
    -- store the returned index or nil of "Gobo1"
    local attributeIndex = GetAttributeIndex("Gobo1")
    -- Check if the returned value is not nil and print a useful feedback
    if attributeIndex~=nil then
        Printf("Attribute is index number %i", attributeIndex)
    else
        Printf("The attribute is not found")
    end
end