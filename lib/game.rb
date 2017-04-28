require_relative './player'

class Game

  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def attack(player)
    @player2.receive_damage if player == :player2
    @player1.receive_damage if player == :player1
  end

end
