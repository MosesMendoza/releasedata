APP_ROOT = File.expand_path(File.dirname(__FILE__))
DATA_FILE = File.join(APP_ROOT, 'data.json')

require 'sinatra'
require 'json'

set :port, 80

get '/' do
  File.read(DATA_FILE)
end
