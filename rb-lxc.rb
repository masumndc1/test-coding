#!/usr/bin/env ruby

hosts = {}

`sudo lxc list -f csv`.lines do |vm|
  ip = vm.split(',')[2].split(' ')[0]
  name = vm.split(',')[0]
  hosts[ip] = name
end

File.open('/etc/hosts', 'w+') do |file|
  match = 0
  hosts.each_pair do |k, v|
    file.each_line do |line|
      match += 1 if line.include?(k)
    end
    puts k, v

    file.puts("#{k} #{v}") if match.zero?
  end
end
