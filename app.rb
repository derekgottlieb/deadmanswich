require 'sinatra'
require 'json'

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/config/config.yml')

class DeadManWichApp < Sinatra::Base
  use Rack::Auth::Basic do |username, password|
    username == CONFIG.fetch('auth_username') && password == CONFIG.fetch('auth_password')
  end

  # Get a list of switches
  get '/' do

  end
  
  # Create a new switch
  post '/' do

  end

  # Get info about a switch
  get '/:id' do

  end

  # Record a checkin for a switch
  get '/:id/ping' do

  end
end
