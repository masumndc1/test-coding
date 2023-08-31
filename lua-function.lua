#!/usr/bin/env lua
-- select function is used to print something
-- from the index. it is also used to print out
-- number of elements as whole

print(select(1, "a", "b", "c")) -- a b c
print(select(2, "a", "b", "c")) -- b c
print(select(3, "a", "b", "c")) -- c

-- example of closure

local A = { 1, 2, 3 }

for _, v in ipairs(A) do
	print(v)
end

for line in io.lines("test.py") do
	if string.find(line, "os") then
		print(line)
	end
end

print("enter a number:")
-- n = assert(io.read("*number"), "Not a number")

local f = function(a, b)
	print(type(a), type(b))
	return a / b
end

local _, err = pcall(f(1, 0))
if err then
	print(err)
end

-- local path = "~/Documents/bekigoto/test-coding/something.so"
-- local file_path = package.loadlib(path, "soemthing")

local myfunction = function(a, b, c)
	a = a or 2
	b = b or 7
	c = c or 8
	print(a, b, c)
end

myfunction()
print(debug.traceback(myfunction()))

-- example of function as first-class value
-- exmaple of lexical scoping where a function can
-- access value of variable from another function.
local newCounter = function()
	local i = 0
	return function()
		i = i + 1
		return i
	end
end

local c1 = newCounter() -- basically local c1 is equal to c1()
print(c1())

--[[
for i = 1, 10, 1 do
	print(c1())
	i = i + 1
end
]]
