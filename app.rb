require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 =  $player1.hp
    @hp2 = $player2.hp
    erb(:play)
  end

  get '/attack' do
    Game.new.inflict_damage($player2)
    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 =  $player1.hp
    @hp2 = $player2.hp
    erb(:attack)
  end

  run! if app_file == $0
end
