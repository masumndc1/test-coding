#!/usr/bin/env lua

-- local _G = _G
local commands = require("lua-commands")
local vars = require("lua-vars")
local longest_line = require("lua-longest_line")

--[[ list all vars from global G
for n in pairs(_G) do
	print(n)
end

-- example of string.format
local pkg_comm = [[
  "sudo %s update; sudo %s search %s"
]]
-- os.execute((string.format(pkg_comm, vars.os, vars.os, vars.pkg)))

--[[
-- look at here how lua uses positional arguments and and how it uses
function Increment(...)           -- body
	local result = 0
	for _, a in next, { ... } do    -- ... become table here
		result = a + result
	end
	return result
end

Increment(1, 2)

-- next is a function used to Traverse all the fields of a Table
-- another use of next
atable = { "K", "Ke", "Sa", "So", "Ha", "Yu" }
for k, v in next, atable do
  print ("values of the table ", k, v)
end

-- using of assert is always good.
if assert(os.execute("ls" .. " -la")) then
	print(color.blue .. "command executation was good" .. color.white)
end
]]

local lua_file = assert(io.popen(vars.list_cur_dir))
local i = vars.initial
for line in lua_file:lines() do
	if string.find(line, "lua") then
		print(line)
		i = i + 1
	end
end
print(string.format("number of lua files found %d", i))

assert(type(vars.site) == "string", "pass string value")
assert(type(vars.nm_ping) == "number", "pass number")
-- commands.ping(vars.nm_ping, vars.site)

-- print(commands.os_path_exists("/usr/bin/apt"))
-- what is my terminal
-- print(vars.term)

print(vars.shell)
print(commands.pkg_mgr())
print(commands.os())
local ret = commands.run_command("ls -la")
if ret then
	print("command run successfully")
end

local file = arg[1] or "sort.txt"
local long_nm, line = longest_line.nm_line(file)
print(line)
print(long_nm)

local x = 10
local y = 20
print(("%d is smaller than %d"):format(x, y))
