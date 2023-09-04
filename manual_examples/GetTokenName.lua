return function()
    -- Store a short string to be used as input
    local shortToken = 'seq'
    -- Get the full token name
    local tokenName = GetTokenName(shortToken)
    -- Print useful output if nil is not returned
    if tokenName ~= nil then
        Printf("The full version of '".. shortToken .. "' is '" .. tokenName .. "'")
    end
end