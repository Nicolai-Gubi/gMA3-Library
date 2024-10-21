-- GetFader(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): double:value[0..100]
return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the value for the Master fader.
    local faderMasterValue = selectedSequence:GetFader({})
    -- Get the value for the Rate fader.
    local faderRateValue = selectedSequence:GetFader({token="FaderRate"})
    -- Print feedback with the values.
    Printf("The selected sequence Master fader value is: ".. tostring(faderMasterValue))
    Printf("The selected sequence Rate fader value is: ".. tostring(faderRateValue))
end