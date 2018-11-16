require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  #WHY DO WE NEED SESSIONS HERE
  post '/names' do
    #WHY GLOBAL VARIABLE HERE
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    redirect :play
  end

  get '/play' do
    #WHY USE AN INSTANCE VARIABLE TO STORE A GLOBAL VARIABLE
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end