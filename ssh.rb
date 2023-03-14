#!/usr/bin/env ruby

require 'net/ssh'

RemoteHost = Class.new

class << RemoteHost
  def conn(url, user, command)
    @url = ARGV[0] || url
    @user = ARGV[1] || user
    @command = ARGV[2] || command

    Net::SSH.start(@url, @user) do |ssh|
      result = ssh.exec!(@command)
      result
    end
  end
end

puts(RemoteHost.conn('thesis', 'ubuntu', 'ruby --version'))
