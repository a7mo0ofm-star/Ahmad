local mt = getrawmetatable(UIS)
setreadonly(mt, false)

local old_index = mt.__index
mt.__index = function(self, key)
    if key == "PreferredInput" then
        return Enum.PreferredInput.Touch
    end
    return old_index(self, key)
end

local old_namecall = mt.__namecall
mt.__namecall = function(self, ...)
    local args = {...}
    local method = args[#args]
    
    if method == "GetLastInputType" then
        return Enum.UserInputType.Touch
    end
    
    return old_namecall(self, ...)
end

setreadonly(mt, true)
print("Xeno the Goat")
