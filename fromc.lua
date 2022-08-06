#!/usr/local/bin/lua

-- call a c function from a c file

function ping_me(num, add)
    os.execute("ping -c" .. " " .. num .. " " .. add)
end
