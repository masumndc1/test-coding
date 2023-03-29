#!/usr/env/ruby

require('optparse')
require_relative('execute')

options = {}
OptionParser.new do |opts|
  opts.banner = %(
  Usage: command.rb [options]
  - c    --command    command to pass
  - h    --help       show help menu
  )

  opts.on('-c', '--command') do |c|
    options[:command] = c
  end

  opts.on('-h', '--help') do |h|
    options[:help] = h
    puts opts.banner
  end
end.parse!

def main
  cmd = ARGV[0]
  puts Execute.do_cmd(cmd)
end

main if __FILE__ == $PROGRAM_NAME
