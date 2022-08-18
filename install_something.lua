#!/usr/bin/env lua

-- install a package by lua

local argparse = require('argparse')


local red = '\27[31m'
local green = '\27[32m'
local blue = '\27[34m'
local purple = '\27[35m'
local white = '\27[37m'


local parser = argparse(blue .. "lua install_something.lua" .. white)
parser:option("-p", "pkg to be installed")
parser:option("--pkg", "pkg to be installed")

local args = parser:parse()

local check_exist = function(name)
    -- normally any installed package's binary resides in /usr/bin
    local path = string.format('/usr/bin/' .. name)
    local f = io.open(path, 'r')
    if f ~=nil then
        io.close(f)
        return true
    else 
        return false
    end
end


local install = function ()
    -- assert (type(arg[1]) == 'string')
    if check_exist(name) then
        print(purple .. "package installed" .. white)
    else
        print(red .. "package is not installed, DO you Want To install? Press Y/y or N/n" .. white)
        local res = io.read()
        if string.match(res, '[Yy]') then
            os.execute("apt-cache search " .. name)
        else
            os.exit()
        end
    end
end

function main()
    if args.p or args.pkg then
        name = args.p or args.pkg
        install()
    else
        error(green .. "provide package name" .. white)
    end
end

main()
