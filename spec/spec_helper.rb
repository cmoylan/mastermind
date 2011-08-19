Dir['lib/**/*.rb'].each do |path|
  full_path = File.expand_path(path)
  require full_path
end

