#!/usr/bin/env lua

-- function for to print long string of star
function long_string()
  print(string.rep("-", 70))
end

function git_operation()
  long_string()
  print("pulling down first")
--  os.execute ('ping -c 10 ' .. msg)
  os.execute ('git add .')
  print("commiting with msg")
  os.execute ('git commit -m ' .. arg[1] )
  print("pushing now to upstream")
  os.execute ('git push origin master')
  long_string()
end

--[[ 
 string=arg[1]
 print(string)
--]]
git_operation()
