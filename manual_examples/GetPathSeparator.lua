return function()
    --- This prints the path seperator. It is different between a Linux and macOS (/) and a Windows (\) operating system.
    Printf("The path seperator is " .. GetPathSeparator())
end