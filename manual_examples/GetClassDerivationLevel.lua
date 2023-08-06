return function()
    -- Get the index integer for the "Pool" class.
    local classDerivationLevel = GetClassDerivationLevel("Pool")
    -- Create a valid Printf return.
    if classDerivationLevel == nil then
        Printf("The return is nil")
    else
        Printf("The ClassDerivationLevel index for 'Pool' is: %i", classDerivationLevel)
    end
end