#!/usr/bin/env lua

local commands = {}

function commands.ping(num, site)
	os.execute("ping -c" .. " " .. num .. " " .. site)
end

function commands.find_pkg()
	if io.open("/usr/bin/apt", "r") then
		return "apt"
	elseif io.open("/usr/bin/yum", "r") then
		return "yum"
	elseif io.open("/usr/bin/zypper", "r") then
		return "zypper"
	end
end

function commands.os_path_exists(file)
	if io.open(file, "r") then
		return true
	else
		return false
	end
end

return commands
