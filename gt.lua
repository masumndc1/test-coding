#!/usr/bin/env lua

-- function for to print long string of star
function long_string()
  print(string.rep("-", 70))
end

function git_operation(msg)
  long_string()
  print("pulling down first")
--  os.execute ('ping -c 10 ' .. msg)
  os.execute ('git add .')
  os.execute ('git commit -m ' .. msg )
  print("pushing now to upstream")
  os.execute ('git push origin master')
  long_string()
end

git_operation(arg[1])
