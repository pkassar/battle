require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player_1 = Player.new
    $player_2 = Player.new
    $player_1.name = params[:player_1]
    $player_2.name = params[:player_2]

    redirect '/play'
  end

  get '/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name

    erb(:play)
  end

  post '/attack' do
      erb(:attack)
  end

end
