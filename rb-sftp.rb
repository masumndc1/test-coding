#!/usr/env/ruby

require('optparse')
require('net/sftp')

options = {}
opt = OptionParser.new do |opts|
  opts.banner = %(Usage: rb-sftp.rb -r hostname -u user -f file -d directory)

  opts.on('-r', '--remote REMOTE', 'remote host') do |r|
    options[:remote] = r
  end

  opts.on('-u', '--username USER', 'username') do |u|
    options[:username] = u
  end

  opts.on('-f', '--file FILE', 'file to transfer') do |f|
    options[:file] = f
  end

  opts.on('-d', '--directory DIRECTORY', 'directory to put file') do |d|
    options[:directory] = d
  end

  opts.on_tail('-h', '--help', 'show this message') do
    puts opts.help
    exit
  end
end
opt.parse!

options[:username] ||= 'ubuntu'
options[:directory] ||= '/home/ubuntu'
dest = options[:directory] << '/' << options[:file]

def main(remote, username, file, dest)
  Net::SFTP.start(remote, username) do |sftp|
    sftp.upload!(file, dest)
  end
end

if __FILE__ == $PROGRAM_NAME
  main(options[:remote],
       options[:username],
       options[:file],
       dest)
end
