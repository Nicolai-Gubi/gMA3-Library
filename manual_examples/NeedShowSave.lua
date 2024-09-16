-- NeedShowSave(nothing): boolean:need_show_save
return function ()
    -- Check if the show should be saved.
    if NeedShowSave() then
        Printf("You should save your showfile.")
    else
        Printf("You do not need to save your showfile.")
    end
end