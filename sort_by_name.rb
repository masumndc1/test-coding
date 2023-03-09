#!/usr/bin/env ruby

def sort_by_name(lines = None)
  return unless lines

  @ext = %w[py rb lua txt c]
  @ext = @ext.sort
  sort_by_name = []

  @ext.each do |e|
    list = []
    lines.each do |name|
      list << name if name.end_with?(e)
      list.sort!
    end
    sort_by_name << list
  end
  sort_by_name
end
