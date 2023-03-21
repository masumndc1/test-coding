#!/usr/bin/env ruby

Execute = Class.new

class << Execute
  def do_cmd(cmd)
    return unless cmd

    @cmd = cmd
    `#{@cmd}`
  end
end
