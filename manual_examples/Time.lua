return function()
    -- Get the current time
    local time = Time()

    --Calculate the different elements
    local days = math.floor(time/86400)
    local hours = math.floor((time % 86400)/3600)
    local minutes = math.floor((time % 3600)/60)
    local seconds = math.floor(time % 60)

    --Print the result
    Printf("The time is %d:%02d:%02d:%02d", days, hours, minutes, seconds)
end