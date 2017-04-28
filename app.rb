require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(params[:player_1], params[:player_2])

    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/player_1_attacked' do
    erb(:player_1_attacked)
  end

  post '/player_2_attacked' do
    erb(:player_2_attacked)
  end

end
