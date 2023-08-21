#!/usr/bin/env lua

-- local _G = _G
local commands = require("commands")
local vars = require("vars")

--[[
for n in pairs(_G) do
	print(n)
end

-- [[local operations = require "operations"
-- this is a comment
-- this is another line of comment
-- this is the i like more
--
-- multiple lines of code is
-- written like bellow
--
--[[
local pkg_comm = [[
    sudo %s update; sudo %s search %s

os.execute((string.format(pkg_comm, vars.os, vars.os, vars.pkg)))
]]

--[[
a = {} -- empty table
for i = 1, 10 do
	a[i] = i
end

for k, v in pairs(a) do
	print(k, v)
end
-- an example of while

for k, v in ipairs(a) do
	print(k, v)
end
]]
--[[
local num = 1
while num < 10 do
	print(num)
	num = num + 1
end

for i = 1, 100, 5 do
	if (i % 2) == 0 then
		print(i)
	end
end

--[[
function Increment(...) -- body
	local result = 0
	for _, a in next, { ... } do
		result = a + result
	end
	return result
end

Increment(1, 2)

if assert(os.execute("ls" .. " -la")) then
	print(color.blue .. "command executation was good" .. color.white)
end
--]]

--[[
local code, command, integer = os.execute("ls /usr/bin/env")
if code then
	print(code)
	print(command)
	print(integer)
end
--]]
-- print(code)

-- if file_exists(arg[1]) then print("this file exists") else print("does not exists") end

local lua_file = assert(io.popen(vars.list_cur_dir))
local i = vars.initial
for line in lua_file:lines() do
	if string.find(line, "lua") then
		print(line)
		i = i + 1
	end
end
print(string.format("number of lua files found %d", i))

--operations.fileexists(arg[1])
--operations.runcommand("ping -c 2 yahoo.com")
assert(type(vars.site) == "string", "pass string value")
assert(type(vars.nm_ping) == "number", "pass number")
-- commands.ping(vars.nm_ping, vars.site)

-- print(commands.os_path_exists("/usr/bin/apt"))
print(vars.term)

local shell = function()
	local shell = nil
	if vars.shell ~= "zsh" then
		shell = "zsh"
	else
		shell = "bash"
	end
	return shell
end

print(shell())
print(commands.find_pkg())
print(commands.os())
local ret = commands.run_command("ls -la")
if ret then
	print("command run successfully")
end
