#!/usr/bin/env ruby
# frozen_string_literal: true

require('colorize')

def check_file(name)
  if File.directory?(name)
    Dir.entries(name).each do |file_name|
      puts file_name.to_s.green
    end
  elsif File.file?(name)
    puts 'this is a file but pass a directory'.red
  elsif !File.exist?(name)
    puts 'file does not exists: pass a directory'.blue
  else
    puts 'only support directory and files'.cyan
  end
end

def main
  check_file(ARGV[0]) unless ARGV.empty?
end

main if __FILE__ == $PROGRAM_NAME
