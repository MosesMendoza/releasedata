RAKE_ROOT = File.expand_path(File.dirname(__FILE__))
DATA_FILE = File.join(RAKE_ROOT, 'data.rb')
JSON_FILE = File.join(RAKE_ROOT, 'data.json')

# DATA_FILE is expected to be a ruby file containing one giant hash, named SERVE_DATA

desc "Write data.json with information in data.rb"
task :data do
  require 'json'
  load DATA_FILE
  unless defined?(SERVE_DATA)
    fail "#{DATA_FILE} does not contain a constant SERVE_DATA containing data"
  end
  File.open(JSON_FILE, 'w') do |f|
    f.puts JSON.pretty_generate(SERVE_DATA)
  end

  begin
    sh 'which git'
  rescue RuntimeError
    fail "`which git` returned nonzero - do you have git installed?"
  end
  %x(git add #{JSON_FILE} && git commit -m 'Update #{JSON_FILE} with new data')
end




