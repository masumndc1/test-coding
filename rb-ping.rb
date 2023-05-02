#!/usr/bin/env ruby

def exec
  if (ARGV[0] && ARGV[0].instance_of?(String)) && (ARGV[1] && ARGV[1].instance_of?(String))
    num = ARGV[0].to_i
    url = ARGV[1]
    `/usr/bin/ping -c num #{url}`
  else
    puts 'could not ping'
  end
end

def main
  # jputs 'programe_name 4 "www.google.com"' unless ARGV.length < 1
  # exit
  puts ARGV[0].class
  puts ARGV[0]

  puts ARGV[1].class
  exec
end

main if __FILE__ == $PROGRAM_NAME
