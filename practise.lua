#!/usr/local/bin/lua

local operations = require "operations"
-- this is a comment
-- this is another line of comment
-- this is the i like more
--
-- multiple lines of code is
-- written like bellow
--

_Integer = 5
_Multi_lines = [[
    so this is whole lines of comment
    whole lines of comment
]]

print("\n" .. _Multi_lines)
print("the types are", type(_Multi_lines), type(_Integer))

-- an example of while

local num = 1
while num < 10 do
    print(num)
    num = num + 1
end

for i = 1, 100, 5 do 
    if (i%2) == 0 then print(i) end 
end 

function Increment ( ... ) -- body
    local result = 0
    for _, a in next, { ... } do
        result = a + result
    end
    return result
end

Increment(1,2)

--[[if (os.execute("ls" .. " " .. "-la")) then
    print("command executation was good")
end
]]
-- print(code)



-- if file_exists(arg[1]) then print("this file exists") else print("does not exists") end

operations.fileexists(arg[1])
operations.runcommand("ping -c 2 yahoo.com")