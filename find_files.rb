def find_files
  @files = []
  @names = ARGV[0] || Dir.pwd

  Dir.entries(@names).each do |name|
    next if ['.', '..'].include?(name)
    next if File.directory?(name)

    next unless File.extname(name).include?('rb') ||
                File.extname(name).include?('py') ||
                File.extname(name).include?('c') ||
                File.extname(name).include?('lua') ||
                File.extname(name).include?('txt')

    @files << name
  end

  return @files unless @files.empty?
end
