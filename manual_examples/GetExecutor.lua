return function ()
    -- This saves the handles for executor 201 on the selected page.
    local executorHandle, pageHandle = GetExecutor(201)
    -- exit the function and print an error message if any of the handles are nil.
    if executorHandle == nil | pageHandle == nil then
        ErrPrintf("There is not a valid object on executor 201, please assign something and try again.")
        return
    end
    -- The following prints the dumps of the two handles.
    Printf("============ START OF EXEC DUMP =============")
    executorHandle:Dump()
    Printf("================ END OF DUMP ================")
    Printf("============ START OF PAGE DUMP =============")
    pageHandle:Dump()
    Printf("================ END OF DUMP ================")
end