#!/usr/bin/env lua

-- globals.lua
-- show all global variables

local seen = {}

local dump = function(t, i)
	seen[t] = true
	local s = {}
	local n = 0
	for k in pairs(t) do
		n = n + 1
		s[n] = k
	end
	table.sort(s)
	for _, v in ipairs(s) do
		print(i, v)
		v = t[v]
		if type(v) == "table" and not seen[v] then
			print("fix this later")
			-- local dump(v)
		end
	end
end

dump(_G, "")

-- print(string.dump())
