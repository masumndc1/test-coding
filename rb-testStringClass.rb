#!/usr/env/env ruby
# testStringClass.rb

require('colorize')
require('logger')
require('pathname')
require('subprocess')

name = %(khabir)
s = %(hello and how are
you #{name}\n).red

puts s if defined?(r)

firstname = %(mohammad)
t = %(hows is going #{firstname}).blue

puts s << t

# example of an array

a = %w[a b c d]
puts a

y = 0
begin
  x = 10
  puts x / y
rescue ZeroDivisionError => e
  puts %(you can not divide it)
  puts(e.class)
  puts(e)
  puts(e.backtrace)
end
puts %(you are done)

c = proc do |x, y|
  puts x * y if x.instance_of?(Integer)
  # puts x * y
end
# c = proc do |x|

c.call(10, 1)
# c.call('10')

def coffee
  puts self
end

# example class will find example
class Example
  def do_something
    banana = 'variable'

    puts banana
    puts self.banana
  end

  def banana
    'method'
  end
end

# Example.new.do_something
Example.new.do_something

# "variable"  => puts banana
# "method"    => puts self.banana

logger = Logger.new($stdout)
logger.info 'testing...'
logger.warn 'fun with Ruby :)'

puts Pathname.glob('*').count(&:directory?)
puts Pathname.glob('*').count(&:file?)

# symbols represent method and instance variable names.
puts [1, 2, 3].send(:first)
# puts ('aa'..'aj').map(&:to_sym)
puts ('aa'..'aj').map(&:to_sym)

# what this will do
# this class
class Food
  attr_accessor :protein

  def initialize(protein)
    @protein = protein
  end
end

f = Food.new(22)
p f.protein
f.protein = 23
p f.protein

# puts `uname -a`.split.map(&:class)
# puts `uname -a`.split.map(&:to_s)
# puts `uname -a`.split.map(&:to_sym)

def print_once
  return 'No block given' unless block_given?

  yield
end
print_once { puts 'Block is being run' }

def explicit_block(&block)
  block.call # same as yield
end
explicit_block { puts 'Explicit block called' }

say_something = -> { puts 'This is a lambda' }
say_something.call

# d = ->(s, t) { puts s * t if s.instance_of?(Integer) }
proc_style = {
  c: proc do |s, t|
    puts s * t if s.instance_of?(Integer)
  end,
  d: proc do |x, y|
    puts x * y if x.instance_of?(Integer)
  end
}

proc_style[:c].call(10, 10)
proc_style[:d].call(20, 20)

# file_name = ARGV[0] || (ENV['HOME'] + '/do.py')
# puts file_name

OPTIONS = {
  version: ['-v', '--version'],
  help: ['-h', '--help']
}

USAGE = <<EUSAGE
  -v, --version:  displays the current version of the program
  -h, --help:     displays a message with usage instructions
EUSAGE

VERSION = "Some Project version 0.01 (Pre-Alpha)\n"

if ARGV[0]
  OPTIONS[:version].each do |v|
    puts VERSION if ARGV[0].include?(v)
  end

  OPTIONS[:help].each do |h|
    puts USAGE if ARGV[0].include?(h)
  end
else
  puts USAGE
end

# params = { generation_size: 200, mutation_rate: 30, display_filter: 5, mutation_amp: 7 }
# puts params[:generation_size]
#
cmdoutput, exitcode = Subprocess.check_call(%w[ping -c 4 yahoo.com])
puts cmdoutput unless exitcode
