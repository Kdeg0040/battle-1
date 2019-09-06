class Game
  def initialize(player1, player2)
    @players = [player1, player2]
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
end
