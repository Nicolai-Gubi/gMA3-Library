return function()
    --Store the handle to the command object
    local cmd = CmdObj()
    --Print all information about the command object
    Printf("=============== START OF DUMP ===============")
    cmd:Dump()
    Printf("================ END OF DUMP ================")
    --Print some selected elements from the command object - this is currently not in the online manual
    Printf("Current text in the command line: " ..cmd.cmdtext)
    Printf("Current cmd edit object: " ..tostring(cmd.editobject and cmd.editobject:ToAddr()))
    Printf("Current cmd destination: " ..tostring(cmd.destination and cmd.destination:ToAddr()))
    Printf("Current user of the command line: " ..tostring(cmd.user and cmd.user:ToAddr()))
    Printf("Current profile of the command line: " ..tostring(cmd.profile and cmd.profile:ToAddr()))
    Printf("Current DMX readout: " ..cmd.dmxreadout)
    Printf("Current amount steps: " ..cmd.maxstep)
    Printf("Current selected object: " ..tostring(cmd:GetSelectedObject() and cmd:GetSelectedObject():ToAddr()))
end