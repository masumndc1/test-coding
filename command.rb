#!/usr/env/ruby

require('optparse')
require_relative('execute')

options = {}
opt = OptionParser.new do |opts|
  opts.banner = %(Usage: command.rb [options])

  opts.on('-c', '--command COMMAND', 'command') do |c|
    options[:command] = c
  end

  opts.on_tail('-h', '--help', 'show this message') do
    puts opts.help
    exit
  end
end
opt.parse!

def main(cmd)
  puts Execute.do_cmd(cmd)
end

main(options[:command]) if __FILE__ == $PROGRAM_NAME
