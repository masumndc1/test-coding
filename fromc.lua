#!/usr/local/bin/lua

-- call a c function from a c file
local _G = _G

ping_me = function (num, add)
    os.execute("ping -c" .. " " .. num .. " " .. add)
end
