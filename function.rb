#!/usr/bin/ruby
#

=begin 
can i learn ruby?
this is my final chance
after that i wont be able 
to do so.
=end

class Ping
  a = 10
  def initialize(x)
    @x = x
  end

  def ping_x_times
    return `ping -c #{@x} yahoo.com`
  end
end

value = Ping.new(2)

puts value.ping_x_times


#if Gem::Version.new(RUBY_VERSION.dup) < Gem::Version.new("2.5.0")
if Gem::Version.new(RUBY_VERSION.dup) > Gem::Version.new("2.5.0")
   raise LoadError, "Puppet #{Puppet.version} requires Ruby 2.5.0 or greater, found Ruby #{RUBY_VERSION.dup}."
end




