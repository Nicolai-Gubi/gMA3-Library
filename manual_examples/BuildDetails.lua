return function()
    --Store the build detials table
    local myBuild = BuildDetails()
    --Print the content of the table
    Printf("GitDate: " .. myBuild.GitDate)
    Printf("GitHead: " .. myBuild.GitHead)
    Printf("GitHash: " .. myBuild.GitHash)
    Printf("CompileDate: " .. myBuild.CompileDate)
    Printf("CompileTime: " .. myBuild.CompileTime)
    Printf("BigVersion: " .. myBuild.BigVersion)
    Printf("SmallVersion: " .. myBuild.SmallVersion)
    Printf("HostType: " .. myBuild.HostType)
    Printf("HostSubType: " .. myBuild.HostSubType)
    Printf("CodeType: " .. myBuild.CodeType)
    Printf("IsRelease: " .. tostring(myBuild.IsRelease))
end
