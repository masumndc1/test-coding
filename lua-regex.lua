#!/usr/bin/env lua
-- pattern matching technique in lua

--[[
.  all characters
%a letters
%c control characters
%d digits
%g printable characters except spaces
%l lower-case letters
%p punctuation characters
%s space characters
%u upper-case letters
%w alphanumeric characters
%x hexadecimal digits
%A all non-character letters
+ 1 or more repetitions
* 0 or more repetitions
--]]

local pattern_matching = function(str)
	local dig = "%d"
	local char = "%a+"
	print(string.find(str, dig))
	print(string.find(str, char))
	print(string.match(str, dig))
	print(string.match(str, char))
end

local pattern_replace = function(str)
	local char1 = "."
	local st, num = string.gsub(str, "%s", char1)
	print(st)
	print("the number of matches:", num)
end

local split = function(str)
	local char1 = ","
	print(string.gsub(str, "%s", char1))
end

local main = function()
	if arg[1] then
		local str = arg[1]
		pattern_matching(str)
		pattern_replace(str)
		split(str)
	else
		print("pass a sentence to match from")
	end
end

main()
