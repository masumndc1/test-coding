#!/usr/bin/env ruby

def osping
  uname = `uname -a`
  return '/sbin/ping' if uname.include?('Darwin')
  return '/usr/bin/ping' if uname.include?('Linux')
end

def exec
  if ARGV[0] && ARGV[1]
    num = ARGV[0].to_i
    url = ARGV[1]
    ping = osping
    cmd = format(%(%s -c %d %s), ping, num, url)

    puts `#{cmd}`
  else
    puts 'could not ping'
  end
end

def main
  unless ARGV[0]
    puts 'programe_name num url'
    exit
  end

  exec
end

main if __FILE__ == $PROGRAM_NAME
