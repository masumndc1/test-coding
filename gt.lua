#!/usr/bin/env lua

-- I want to print the output in colored font.
local color = require("color")

local long_string = function()
	local n = io.popen("tput cols")
	if n then
		print(color.lightgreen .. string.rep("-", n:read()))
	end
end

local git_operation = function(msg)
	long_string()
	os.execute("git add .")
	print(color.green .. "Commiting with msg '" .. msg .. color.white)
	os.execute("git commit -m '" .. msg .. "' ")
	print(color.purple .. "Pulling down now" .. color.white)
	os.execute("git pull --rebase")
	print(color.blue .. "Pushing now to master" .. color.white)
	os.execute("git push origin master")
	long_string()
end

local main = function()
	if #arg < 1 then
		print(color.yellow .. 'usage: ./gt.lua "msg"' .. color.white)
		os.exit()
	end

	if arg[1] then
		local msg = arg[1]
		git_operation(msg)
	end
end

main()
