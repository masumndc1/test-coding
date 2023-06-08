#!/usr/bin/env ruby

def find_pkg
  pkg = case RUBY_PLATFORM
        when /[Dd]arwin/
          'brew'
        when /[Ll]inux/
          'yum' if File.exist?('/usr/bin/yum')
          'zypper' if File.exist?('/usr/bin/zypper')
          'apt-get' if File.exist?('/usr/bin/apt')
        end
end

def pkg?(pkg_name)
  return true if File.exist?("/usr/bin/#{pkg_name}")

  false
end

def install_pkg(pkg, pkg_name)
  `sudo #{pkg} install -y #{pkg_name}`
end

def main
  raise 'exit' unless ARGV[0]

  pkg_name = ARGV[0] if ARGV[0]
  install_pkg(find_pkg, pkg_name) unless pkg?(pkg_name)
end

main if __FILE__ == $0
