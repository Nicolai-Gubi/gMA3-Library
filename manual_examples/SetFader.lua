--SetFader(light_userdata:handle, {[float:value[0..100]], [boolean:faderEnabled], [string:token(Fader*)]}): nothing
return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Set the master fader to 100. The FaderMaster is the default token, so it can be omitted.
    selectedSequence:SetFader({value=100.0})
    -- Set the time fader to 5 seconds and enable the fader.
    selectedSequence:SetFader({value=50.0, faderEnabled=1, token="FaderTime"})
end