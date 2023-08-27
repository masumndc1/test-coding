#!/usr/bin/env lua
-- find size of a file.

local f = function (file)
	local current = file:seek("set", 0)
	local size = file:seek("end")
	file:seek("set", current)
	return size
end

local file = io.open("fromc.lua","r")
--local s = f(file)

print(f(file))
