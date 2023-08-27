#!/usr/bin/env lua
-- example of global var

-- local _G = _G
local _ENV = _ENV

-- for v in pairs(_G) do print(v) end
for v in pairs(_ENV) do
	print(v)
end

-- local value = _G[load]

-- print(value)
--
print(os.getenv("HOME"))
-- print(os.environ())
