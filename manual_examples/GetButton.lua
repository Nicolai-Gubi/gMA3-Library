return function()
    --- grandMA3 full-size modules are:
    --- Fader Module Encoder (MFE): "UsbDeviceMA3 2"
    --- Fader Module Crossfader (MFX): "UsbDeviceMA3 2"
    --- Master Module (MM): "UsbDeviceMA3 4"
    
    -- Get a handle to the Master Module on a grandMA3 full-size.
    local usbDeviceHandle = Root().UsbNotifier.MA3Modules["UsbDeviceMA3 4"]
    -- Create a table with the button status.
    local buttonTable = GetButton(usbDeviceHandle)
    -- Check if the table is nil and then print an error.
    if buttonTable == nil then
        ErrPrintf("nil")
        return
    end
    -- If the table is not nil, then print a usefull feedback. 
    for key,value in pairs(buttonTable) do
        if tostring(value) == "true" then
            Printf("The button with the index " .. key .. " is pressed.")
        end
	end
end