--GetFaderText(light_userdata:handle, {[string:token(Fader*)], [integer:index]}): string:text
return function()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- Get the value for the Master fader. Since it is the default, no token needs to be defined.
    local faderMasterText = selectedSequence:GetFaderText({})
    -- Get the value for the Rate fader.
    local faderRateText = selectedSequence:GetFaderText({token="FaderRate"})
    -- Print feedback with the values.
    Printf("The selected sequence Master fader value text is: ".. tostring(faderMasterText))
    Printf("The selected sequence Rate fader value text is: ".. tostring(faderRateText))
end