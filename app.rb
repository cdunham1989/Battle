# in app.rb

require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $game.attack($player1, $player_2)
    erb :attack
  end

  run! if app_file == $0
end
