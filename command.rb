#!/usr/env/ruby

require_relative('execute')

def main
  cmd = ARGV[0]
  puts Execute.do_cmd(cmd)
end

main if __FILE__ == $PROGRAM_NAME
