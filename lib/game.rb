class Game
  attr_reader :current_turn, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @opponent = player2
  end

  def inflict_damage(player)
    player.reduce_hp
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @opponent = current_turn
    @current_turn = opponent_of(current_turn)
  end

  def game_over?
    player_1.hp == 0 || player_2.hp == 0
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
