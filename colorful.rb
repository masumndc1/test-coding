#!/usr/bin/env ruby

require('colorize')

class ShowColor
  def initialize; end

  def show_color(names)
    names.each do |name|
      if name.end_with?('c')
        puts name.red
      elsif name.end_with?('lua')
        puts name.cyan
      elsif name.end_with?('py')
        puts name.blue
      elsif name.end_with?('rb')
        puts name.green
      else
        puts name.yellow
      end
    end
  end
end
