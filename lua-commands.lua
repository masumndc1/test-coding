#!/usr/bin/env lua

local commands = {}

function commands.ping(num, site)
	os.execute("ping -c " .. num .. " " .. site)
end

function commands.pkg_mgr()
	if io.open("/usr/bin/apt", "r") then
		return "apt"
	elseif io.open("/usr/bin/yum", "r") then
		return "yum"
	elseif io.open("/usr/bin/zypper", "r") then
		return "zypper"
	elseif io.open("/opt/homebrew/bin/brew", "r") then
		return "brew"
	elseif io.open("/opt/local/bin/port", "r") then
		return "port"
	else
		return false
	end
end

function commands.os_path_exists(file)
	if io.open(file, "r") then
		return true
	else
		return false
	end
end

function commands.os()
	local os_name = io.popen("uname -o")
	if os_name then
		if os_name:read() == "Darwin" then
			return "mac"
		elseif os_name:read() == "Linux" then
			return "linux"
		end
	else
		print("could not determine os")
		return false
	end
end

function commands.run_command(cmd)
	-- this will return true or false as exist code
	-- based on successful execution
	local cmds = assert(io.popen(cmd))
	if cmds:read() then
		for line in cmds:lines() do
			print(line)
		end
		return true
	else
		return false
	end
end

function commands.long_string()
	local term_in_colm = assert(io.popen("tput cols"))
	return term_in_colm:read()
end

function commands.check_exist_pkg(name)
	-- normally any installed package's binary resides in /usr/bin
	local path = string.format("/usr/bin/" .. name)
	local f = io.open(path, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

return commands
