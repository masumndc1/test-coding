#!/usr/bin/env ruby

count = 1
while count
  puts '*' * count
  count += 1
  break if count > 5
end

while count
  puts '*' * count
  count -= 1
  break if count < 1
end
