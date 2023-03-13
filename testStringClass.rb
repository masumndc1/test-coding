#!/usr/env/env ruby

require('colorize')

name = %(khabir)
s = %(hello and how are
you #{name}\n).red

# puts s

firstname = %(mohammad)
t = %(hows is going #{firstname}).blue

puts s << t

# example of an array

a = %w[a b c d]
puts a

y = 0
begin
  x = 10
  puts x / y
rescue ZeroDivisionError => e
  puts %(you can not divide it)
  puts(e.class)
  puts(e)
  puts(e.backtrace)
end
puts %(you are done)

c = proc do |x|
  puts x * x
end

c.call(10)
