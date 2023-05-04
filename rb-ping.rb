#!/usr/bin/env ruby

Exec = Class.new

class << Exec
  def notify
    puts 'programe_name num url'
    puts 'ruby rb-ping.rb 1 www.google.com'
  end

  def osping
    uname = `uname -a`
    return '/sbin/ping' if uname.include?('Darwin')
    return '/usr/bin/ping' if uname.include?('Linux')
  end

  def exec
    num = ARGV[0].to_i
    url = ARGV[1]
    ping = osping
    cmd = format(%(%s -c %d %s), ping, num, url)

    puts `#{cmd}`
  end
end

def main
  unless ARGV[0] && ARGV[1].include?('www')
    Exec.notify
    exit
  end

  Exec.exec
end

main if __FILE__ == $PROGRAM_NAME
