return function()
    --Creates a pop-up asking to be confirmed and prints a useful text.
    if Confirm("Confirm me", "Tap OK or Cancel", nil, true) then
        Printf("Pop-up result: OK")
    else
        Printf("Pop-up result: Cancel")
    end
end