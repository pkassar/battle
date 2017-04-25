require 'sinatra/base'

class Battle < Sinatra::Application
  get "/" do
    "Hello Battle"
  end
end
