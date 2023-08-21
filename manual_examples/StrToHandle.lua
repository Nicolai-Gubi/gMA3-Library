return function()
    -- Store a variable with the string of the handle converted to hex
    local mySeqStr = HandleToStr(SelectedSequence())
    -- Print some feedback with the handle in a string version
    Printf("The handle for the selected sequence (string version): %s", mySeqStr)
    -- Print some feedback where the string is converted back to a handle
    Printf("The name of the selected sequence is: %s", StrToHandle(mySeqStr).name)
end