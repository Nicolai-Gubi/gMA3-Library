return function()
    -- Set the DMX universe - range 1-1024.
    local myDMXUniverse = 1
    -- Set the DMX address in the universe - range 1-512.
    local myDMXAddress = 1
    -- Set the optional count for the number of fixtures (break_index channel amount) to check.
    local myCount = 1
    -- Set the optional break_index number for fixtures with multiple breaks. 
    -- Default value is 0 to indicate the first break.
    local myBreakIndex = 0

    -- Creates the string used for the DMX address.
    local startOfRange = string.format("%d.%03d", myDMXUniverse, myDMXAddress)

    -- Check if there is a selection and exit if there isn't.
    if GetSubfixture(SelectionFirst()) == nil then
        Printf("Please make a selection and try again.")
        return
    end
    -- This gets the handle for the first fixture a patched generic Dimmers 8-bit mode.
    local myDmxMode = GetSubfixture(SelectionFirst()).ModeDirect

    if myDmxMode == nil then
        -- Exit the function if the DMX mode returns nil.
       
    else
        -- Do the actual collision check and provide useful feedback.
        if CheckDMXCollision(myDmxMode, startOfRange, myCount, myBreakIndex) then
            Printf("The DMX address " .. startOfRange .. " is available.")
            return
        else
            Printf("The DMX address " .. startOfRange .. " cannot be used as a start address for this patch.")
            return
        end
    end
end