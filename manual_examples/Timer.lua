--[=====[ 
Timer(
    function:name,
    number:delaytime,
    number:max_count,
    [function:cleanup],
    [light_userdata:context object]
): nothing
--]=====]

-- Function that will be called several times.
function TimedFunction()
    -- Check the value of RunAmount and print something.
    if RunAmount < 1 then
        Printf("Hello")
    else
        Printf("Hello again")
    end
    -- Add 1 to the RunAmount variable.
    RunAmount = RunAmount + 1
end

-- Cleanup function.
function TimerCleanup()
    -- Delete the RunAmount variable.
    RunAmount = nil
end

-- Function with the Timer call.
function Main()
    -- Set a wait variable.
    local waitSeconds = 1
    -- Set a variable with the number of iterations.
    local iterations = 3
    -- Create a counter variable and set it to 0.
    RunAmount = 0
    -- Call the timer function.
    Timer(TimedFunction, waitSeconds, iterations, TimerCleanup);
end

-- call the main function.
return Main