#!/usr/local/bin/lua

-- this file will do following operations

local M = {}

function M.fileexists(name)
	local f=io.open(name,"r")
	if f~=nil then
			io.close(f) 
			print("file exist")
			return true
	else 
			print("file does not exist")
			return false
	end
end

function M.runcommand(name)
    local res = os.execute(name)
    if res then print("executed") else print("not executed") end
end

return M