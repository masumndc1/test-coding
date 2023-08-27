#!/usr/bin/env lua

local commands = require("commands")
local color = require("color")

local install = function(pkg)
	if commands.check_exist_pkg(pkg) then
		print(color.yellow .. "package installed" .. color.white)
	else
		print(color.lightgreen .. "package is not installed" .. color.white)
		print(color.lightgreen .. "To Install? Press Y/y or N/n" .. color.white)
		local res = io.read()
		if string.match(res, "[Yy]") then
			os.execute("sudo " .. commands.pkg_mgr() .. " install -y " .. pkg)
		else
			os.exit()
		end
	end
end

local main = function()
	if arg[1] and type(arg[1]) == "string" then
		local pkg = arg[1]
		install(pkg)
	else
		print(color.purple .. "./install_something.lua pkg_name" .. color.white)
		error(color.green .. "provide package name" .. color.white)
	end
end

main()
