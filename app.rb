require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

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
    redirect '/dead' if $game.player1.hp == 10
    erb(:player_1_attacked)
  end

  post '/player_2_attacked' do
    redirect '/dead' if $game.player2.hp == 10
    erb(:player_2_attacked)
  end

  post '/attacked' do
    redirect '/dead' if $game.player2.hp == 10 || $game.player1.hp == 10
    erb(:attacked)
  end

  get '/dead' do
    $game.player1.hp == 0? @loser = $game.player1.name : @loser = $game.player2.name
    erb(:dead)
  end

end
