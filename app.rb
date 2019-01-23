require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  get '/play' do
    @name1 = session[:player1]
    @name2 = session[:player2]
    @hitpoints1 = session[:hitpoints1]
    @hitpoints2 = session[:hitpoints2]
    erb :play

  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    session[:player1] = @player1.name
    session[:player2] = @player2.name
    session[:hitpoints1] = @player1.hitpoints
    session[:hitpoints2] = @player2.hitpoints

    redirect '/play'
  end

  get '/attack' do
    @name1 = session[:player1]
    @name2 = session[:player2]

    erb :attack
  end


  run! if app_file == $0

end
