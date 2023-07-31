return function ()
    -- Prints the content of the ConfigTable
    for key,value in pairs(ConfigTable()) do
        Printf(key .. " : " .. value)
    end
end
