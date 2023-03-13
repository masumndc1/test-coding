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

begin
  x = 10
  puts x / 0
rescue ZeroDivisionError
  puts %(you can not divide it)
  puts($!.class)
  puts($!)
end
puts %(you are done)
