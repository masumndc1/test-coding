#!/usr/bin/ruby

require_relative('find_files')
require_relative('sort_by_name')
require_relative('colorful')

def main
  file = Findfiles.new.find_files
  file = SortByName.new(file).sort_by_name
  file.each do |f|
    ShowColor.new.show_color(f)
  end
end

main if __FILE__ == $PROGRAM_NAME
