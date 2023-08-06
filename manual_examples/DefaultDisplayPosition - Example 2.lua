return function()
    -- Store a handle to display 1 (child 1 of the default displays).
    local display1 = DefaultDisplayPositions():Children()[1]
    -- Toggles the 'ShowMainMenu' setting.
    display1.ShowMainMenu = not display1.ShowMainMenu
end