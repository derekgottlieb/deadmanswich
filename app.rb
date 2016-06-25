require 'sinatra'
require 'json'

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/config/config.yml')

class DeadManWichApp < Sinatra::Base
  use Rack::Auth::Basic do |username, password|
    username == CONFIG.fetch('auth_username') && password == CONFIG.fetch('auth_password')
  end

  post '/' do
  end
end
