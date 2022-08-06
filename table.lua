-- lua table practise

local t = {}
for i = 1, 10, 1 do
  table.insert(t, i*i)
  -- t[i] = i*i
end
--[[
for i = 1, #t do
  print(t[i])
end

for k,v in ipairs(t) do
  print(k,v)
end

local m = {'a', 'b', 'c'}
-- m = table.concat(m,",",2)
for k,v in ipairs(m) do
  print(k,v)
end
]]

-- print all the arguments passed through the cli

if #arg >= 1 then
  for i = 1, #arg do
     print(i,arg[i])
   end
end
print(arg[0])

