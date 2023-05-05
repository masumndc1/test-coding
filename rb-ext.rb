#!/usr/bin/env ruby
# find out all of the extention of files.

Findext = Class.new

class << Findext
  def ext
    @folder = Dir.getwd
    Dir.entries(@folder).each do |name|
      next if ['.', '..'].include?(name)

      puts File.extname(name) unless File.extname(name).empty?
    end
  end
end

def main
  Findext.ext
end

main if __FILE__ == $PROGRAM_NAME
