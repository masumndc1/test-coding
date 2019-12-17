#!/usr/bin/env lua

-- function for to print long string of star
function long_string()
  print(string.rep("-", 70))
end

function git_operation(msg)
  long_string()
--  os.execute ('ping -c 10 ' .. msg)
  os.execute ('git add .')
  os.execute ('git commit -m ' .. msg )
  long_string()
end


-- git_operation(arg[1])
git_operation(arg[1])
