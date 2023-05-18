#!/usr/bin/env ruby
# more on unit testing
# https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing
# plz read this doc

require 'test/unit'
require_relative 'rb-ping'

class Testosping < Test::Unit::TestCase
  def test_osping_mac
    assert_equal('/sbin/ping', Exec.osping)
  end

  # def test_osping_linux
  #  assert_equal('/usr/bin/ping', Exec.osping)
  # end
end
