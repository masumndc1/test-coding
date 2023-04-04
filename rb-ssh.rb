#!/usr/bin/env ruby
# !/usr/env/ruby

require('optparse')
require('net/ssh')

options = {}
opt = OptionParser.new do |opts|
  opts.banner = %(Usage: rb-ssh.rb -r hostname -u user -c command)

  opts.on('-r', '--remote REMOTE', 'remote host') do |r|
    options[:remote] = r
  end

  opts.on('-u', '--username USER', 'username') do |u|
    options[:username] = u
  end

  opts.on('-c', '--command COMMAND', 'command to run') do |f|
    options[:command] = f
  end

  opts.on_tail('-h', '--help', 'show this message') do
    puts opts.help
    exit
  end
end
opt.parse!

options[:remote] ||= 'nvim'
options[:username] ||= 'ubuntu'

def main(remote, username, command)
  Net::SSH.start(remote, username) do |ssh|
    result = ssh.exec!(command)
    puts result
  end
end

if __FILE__ == $PROGRAM_NAME
  main(options[:remote],
       options[:username],
       options[:command])
end
