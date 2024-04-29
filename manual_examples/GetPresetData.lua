--GetPresetData(light_userdata:preset_handle[, boolean:phasers_only(default=false)[, boolean:by_fixtures(default=true)]]): table:phaser_data
return function()
  -- Get the handle for the first Dimmer preset.
  local myPreset = DataPool().PresetPools[1][1]
  -- Get the Preset Data of the handle.
  local myPresetData = GetPresetData(myPreset, false, false)
  -- Check if the GetPresetData returns something. 
  if myPresetData == nil then
      ErrPrintf("Dimmer preset 1 does not exist. Please create one and try again.")
      return
  end

  -- Print the myPresetData table.
  for Key, value in pairs(myPresetData) do
    if type(value) == "table" then
      Printf("Key: " .. Key .. " ; Value type is: " .. type(value))
    else
      Printf("Key: " .. Key .. " ; Value type is: " .. type(value) .. " ; Value: " .. value)
    end
  end

  -- Create a table object to hold all the integer keys in the myPresetData table.
  local myIntegerTableKeys = {}
  -- Fill the table.
  for key,_ in pairs(myPresetData) do
      if type(key) == "number" then
          table.insert(myIntegerTableKeys, key)
      end
  end
  -- Sort the table
  table.sort(myIntegerTableKeys)

  -- Print the elements of the fixture with the lowest ui_channel_index in the preset.
  local tableIndex = myIntegerTableKeys[1]
  if tableIndex ~= nil then
      Printf("=============== TABLE CONTENT START - Table Key: " .. tableIndex .." ===============")
      for Key, value in pairs(myPresetData[tableIndex]) do
        if type(value) == "table" then
          Printf("Key: " .. Key .. " ; Value type is: " .. type(value))
        else
          Printf("Key: " .. Key .. " ; Value type is: " .. type(value) .. " ; Value: " .. tostring(value))
        end
      end
      Printf("================ TABLE CONTENT END - Table Key: " .. tableIndex .." ================")
  end
end