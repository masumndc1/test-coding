#!/usr/bin/ruby

require_relative('find_files')
require_relative('sort_by_name')
require_relative('colorful')

def main
  file = find_files
  file = sort_by_name(file)
  file.each do |f|
    show_color(f)
  end
end

main if __FILE__ == $PROGRAM_NAME
