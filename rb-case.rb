#!/usr/bin/env ruby

puts RUBY_PLATFORM

pkg = case RUBY_PLATFORM
      when /[Dd]arwin/
        'brew'
      when /[Ll]inux/
        'yum' if File.exist?('/usr/bin/yum')
        'zypper' if File.exist?('/usr/bin/zypper')
        'apt' if File.exist?('/usr/bin/apt')
      end

puts pkg
puts `#{pkg} list neovim`
