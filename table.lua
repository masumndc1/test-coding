-- lua table practise

local me = {}
--print("i have ", me.money)

local rich = { money = 999999 }
--print("rich has", rich.money)

-- When rich give me some money
local rich_donate = { __index = rich }
setmetatable(me, rich_donate)

-- print("After rich donate me i have ", me.money)

Set = {}
local mt = {}

function Set.new(l)
    local set = {}
    setmetatable(set, mt)
    for k,v in ipairs(l) do 
       set[k] = v
    end
    return set
end

function Set.union (a,b)
    local set = {}
    for k,v in ipairs(a) do set[k] = v end
    for k,v in ipairs(b) do set[#a + k] = v end
    return set
end

function Set.print (l)
    local set = {}
    for k,v in ipairs(l) do set[k] = v end
    return table.concat(set, ",")
end


a=Set.new({1,2,3})
b=Set.new({4,5,6})
print(Set.print(a) .. " + " .. Set.print(b))

mt.__add = Set.union

local c = a + b
print(Set.print(c))

-- end of file
