

-- select function is used to print something
-- from the index. it is also used to print out
-- number of elements as whole

print(select(1, "a","b","c")) -- a b c
print(select(2, "a","b","c")) -- b c
print(select(3, "a","b","c")) -- c

-- now use the # function
print(select("#", {a,b,c})) -- 1
print(select("#", a,b,c)) -- 3
print(select("#", {a,b,c}, 4, 5, {6,7,8})) -- 4

-- example of closure

A = {1, 2, 3}

for _,v in ipairs(A) do
--    print(v)
end

for line in io.lines("test.py") do
    if string.find(line, "os") then print(line) end
end

print "enter a number:"
-- n = assert(io.read("*number"), "Not a number")

local f = function(a,b)
    print(type(a), type(b))
    return a/b
end

status, err = pcall(f(1,0))

if err then print(err) end


path = "~/Documents/bekigoto/test-coding/something.so"
local f = package.loadlib(path, "soemthing")

local myfunction = function (a,b,c)
    a = a or 2
    b = b or 7
    c = c or 8
    print (a,b,c)
end

myfunction()
print(debug.traceback(myfunction()))

function newCounter ()
    local i = 0
    return function()
        i=i+1
        return i
    end
end

c1 = newCounter()

for i = 1, 10, 1 do
--    print(c1()) 
end
