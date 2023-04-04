#!/usr/bin/env ruby
# !/usr/env/ruby
# https://github.com/rubyzip/rubyzip
# ri Zip::File

require('optparse')
require('zip')

options = {}
opt = OptionParser.new do |opts|
  opts.banner = %(Usage: rb-zip.rb -z zipfilename -f file1 file2 file3)

  opts.on('-z', '--zip-file ZIP-FILE', 'zip-file') do |z|
    options[:zip] = z
  end

  opts.on('-f', '--files FILES', 'files to zip') do |f|
    options[:files] = f
  end

  opts.on_tail('-h', '--help', 'show this message') do
    puts opts.help
    exit
  end
end
opt.parse!

pwd = ENV['PWD']
options[:zip] = %(#{pwd}/#{options[:zip]})

def main(zip)
  Zip::File.open(zip, Zip::File::CREATE) do |zipfile|
    ARGV.each do |file|
      zipfile.add(file, File.join(ENV['PWD'], file))
    end
  end
end

main(options[:zip]) if __FILE__ == $PROGRAM_NAME
