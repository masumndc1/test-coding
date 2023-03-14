#!/usr/bin/env ruby -w

ENV.each_pair do |key, value|
  puts "#{key}:\t\t #{value}"
end

RUBY_PLATFORM.include?('darwin') ? puts('macos') : puts('non-macos')
