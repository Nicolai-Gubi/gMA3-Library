return function()
    -- This prints the value of DMX address 1 in universe 4 in a range of 0 to 255
    local address = 1       -- The DMX address
    local universe = 4      -- The DMX universe
    local percent = false   -- Readout in percent or DMX value
    local value = GetDMXValue(address, universe, percent)
    Printf("DMX address %i.%03d is %03d", universe, address, value)
end