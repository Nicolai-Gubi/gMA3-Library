--FindTexture(string:texture name): light userdata:handle to texture found
return function ()
    -- Set a texture name.
    local textureName = "button"
    -- Get the handle of the texture.
    local textureHandle = FindTexture(textureName)
    -- Check if textureHandle returned something and provide feedback.
    if textureHandle == nil then
        ErrPrintf("Texture does not exist.")
    else
        Printf("=============== START OF DUMP ===============")
        FindTexture(textureName):Dump()
        Printf("================ END OF DUMP ================")
    end
end