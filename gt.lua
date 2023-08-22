#!/usr/bin/env lua

-- I want to print the output in colored font.
local color = require("color")

local long_string = function()
	local n = assert(io.popen("tput cols"))
	print(color.lightgreen .. string.rep("-", n:read()))
end

local git_operation = function(msg)
	local branch = arg[2] or "master"
	local git_add = "git add ."
	local git_commit = "git commit -m '" .. msg .. "' "
	local git_pull = "git pull --rebase"
	local git_push = "git push origin " .. branch
	if os.execute(git_add) then
		print("Added new changes")
	end
	if os.execute(git_commit) then
		print(color.green .. "Committed with msg '" .. msg .. color.white)
	end
	if os.execute(git_pull) then
		print(color.purple .. "Pulled down changes from upstream" .. color.white)
	end
	if os.execute(git_push) then
		print(color.blue .. "Pushed to " .. branch .. color.purple)
	end
end

local main = function()
	if #arg < 1 then
		print(color.yellow .. 'usage: ./gt.lua "msg"' .. color.white)
		os.exit()
	end

	if arg[1] then
		local msg = arg[1]
		long_string()
		git_operation(msg)
		long_string()
	end
end

main()
