#!/usr/bin/ruby

require_relative('find_files')
require_relative('sort_by_name')
require_relative('colorful')

def main
  file = Findfiles.find_files
  file = SortByName.sort_by_name(file)
  file.each do |f|
    ShowColor.show_color(f)
  end
end

main if __FILE__ == $PROGRAM_NAME
