#!/usr/bin/env lua

-- I want to print the output in colored font.
local green = '\27[32m'
local blue = '\27[34m'
local purple = '\27[35m'
local white = '\27[37m'

local long_string = function(n)
  print(string.rep("-", n))
end

local git_operation = function(msg)
  long_string(70)
  print(purple .."Pulling down first \27[37m" .. white)
  os.execute ('git pull')
  os.execute ('git add .')
  print(green .. "Commiting with msg '" .. msg .. white)
  os.execute ("git commit -m '" .. msg .. "' ")
  print(blue .. "Pushing now to master" .. white)
  os.execute ('git push origin master')
  long_string(70)
end

function main()
    if arg[1] then
        msg = arg[1]
        git_operation(msg)
    end
end

main()
