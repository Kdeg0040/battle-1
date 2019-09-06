require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.inflict_damage(@game.opponent)
    @game.switch_turns
    redirect to('/lose') if @game.game_over?
    erb(:attack)
  end

  get '/lose' do
    erb(:lose)
  end

  run! if app_file == $0
end
