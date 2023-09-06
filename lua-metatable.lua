#!/usr/bin/env lua
-- practise on metatable
-- declare two tables

local C = { "one", "two", "three" }
local Set = {}

function Set.new(l)
	local set = {}
	for _, v in ipairs(l) do
		set[v] = true
	end
	return set
end

function Set.count(l)
	-- show the location of the table in memory
	print(l)
	local count = 0
	for _ in pairs(l) do
		count = count + 1
	end
	return count
end

local something = Set.new({ C })
local how_many = Set.count({ C })
print(type(something))
print(#something)
print(how_many)
print(type(how_many))

for i = 1, #something do
	print(something[i])
end

local a = {
	value = 5,
}

print("--------------------")
print(a.value)
print("--------------------")

local mt = {
	__index = function(aa, bb)
		if aa == bb then
			return true
		elseif aa > bb or bb > aa then
			return false
		end
	end,
}

print(getmetatable(mt))

setmetatable(a, mt)
print(mt({ 2, 2 }))
print(a(2, 3))
--[[for i = 1, #C do
    print(C[i])
end]]

-- define a prototype which is nothing but some default values
local prototype = {
	x = 0,
	y = 0,
	width = 100,
	height = 100,
}

-- define a metatable
local mtb = {}

-- now set the prototype to mt.
-- prototype it self a table and mt as well.
-- therefore setting prototype to mt is not a problem.
mtb.__index = prototype

-- construction function: how new table will be treated
local function new(o)
	setmetatable(o, mtb)
	return o
end

-- set another tables by using new function
local w = new({
	x = 10,
	y = 5,
})

print(w.x, w.y, w.width, w.height)

-- __newindex
--
--
-- The __newindex meta method is complementary to the __index meta method.
-- Where __index is used to retrieve values from missing keys in a table,
-- __newindex is used to assign values to missing keys.
-- The __newindex method takes three arguments:

--    The table that is being operated on
--    The missing key
--    The value being assigned

-- Here is an example of using the __newindex meta method:
--[[
x = {}
y = {}
z = {
	__index = function(table, key)
		return z[key]
	end,
	__newindex = function(table, key, value)
    return t[k] = v
  end
}
--]]

-- example of __newindex
local function track(t)
	-- proxy table for 't'
	local proxy = {}
	-- create metatable for the proxy
	local mtbb = {
		__index = function(_, k)
			print("*access to element " .. tostring(k))
			-- access the original table
			return t[k]
		end,
		__newindex = function(_, k, v)
			print("*update of element " .. tostring(k) .. " to " .. tostring(v))
			-- update original table
			t[k] = v
		end,
	}
	setmetatable(proxy, mtbb)
	return proxy
end

local t = {}
t = track(t)
print(t[0], t[3])
t[2] = "hello"
print(t[2])
