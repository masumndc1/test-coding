-- practise on metatable

-- declare two tables
C = {'one','two','three'}

Set = {}

function Set.new (l)
    local set = {}
    for _, v in ipairs(l) do set[v] = true end
    -- print(set): this prints a memory location
    return set
end

function Set.count (l)
    print(l)
    local count = 0
    local set = {l}
    for _,v in ipairs(l) do 
        count = count + 1 
    end
    return count
end

local something = Set.new{C}
local how_many = Set.count{C}
print(type(something))
print(#something)
print(how_many)
print(type(how_many))

for i = 1, #something do
    print(something[i])
end

--[[for i = 1, #C do
    print(C[i])
end]]

