#!/usr/bin/env ruby

SortByName = Class.new

class << SortByName
  def sort_by_name(files)
    @files = files or None
    return unless @files

    @ext = %w[py rb lua txt c]
    @ext = @ext.sort
    sort_by_name = []

    @ext.each do |e|
      list = []
      @files.each do |name|
        list << name if name.end_with?(e)
        list.sort!
      end
      sort_by_name << list
    end
    sort_by_name
  end
end
