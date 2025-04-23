require 'yaml'
require 'erb'
require 'json'

config = YAML.load_file('config.yml')
template = File.read('template.erb')
erb = ERB.new(template)

File.write('index.html', erb.result_with_hash(config))
puts "✅ index.html berhasil dibuat!"
