require 'sinatra/base'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]

    redirect '/play'
  end

  get '/play' do
    @name1 = session[:player_1]
    @name2 = session[:player_2]

    erb(:play)
  end

  post '/attack' do
      erb(:attack)
  end

end
