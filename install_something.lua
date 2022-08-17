#!/usr/bin/env lua

-- install something by lua

local argparse = require('argparse')

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
        print("package installed") 
    else
        print("package is not installed, DO you Want To install? Press Y/y or N/n")
        local res = io.read()
        if string.match(res, '[Yy]') then 
            os.execute("apt-cache search " .. name) 
        else 
            os.exit() 
        end
    end
end

function main()
    if arg[1] then 
        name = arg[1] 
        install()
    else
        error("provide package name") 
    end
end

main()
