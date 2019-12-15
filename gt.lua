#!/usr/bin/env lua

-- function for to print long string of star

function star()
  print(string.rep("*", 70))
end
print(arg)
print(arg[0])
print(arg[1])
star()
print("Adding newly edited files")
os.execute ("git add .")
print("Commiting with messages:", arg[1])
star()
os.execute ('git commit' )
star()
print("Pulling new changes first")
star()
os.execute ("git pull")
star()
print("Pushing to upstream")
star()
os.execute("git push origin master")
star()
