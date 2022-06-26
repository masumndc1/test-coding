#!/usr/bin/ruby
#
#`cd ~`
#puts `pwd`
#puts `uname -a`.split
#
#!/usr/bin/ruby
require 'colorize'
#
puts "Blue text".blue
puts 'Bold cyan on blue text'.cyan.on_blue.bold
puts "This is #{"fancy".red} text"


output = `ping -c 4 yahoo.com`
puts output
