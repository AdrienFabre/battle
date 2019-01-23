require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    @hitpoints1 = $player1.hitpoints
    @hitpoints2 = $player2.hitpoints
    erb :play

  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])

    redirect '/play'
  end

  get '/attack' do
    $player1.attack($player2)

    redirect '/play'
  end


  run! if app_file == $0

end
