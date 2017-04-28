require 'game'
require 'player'

describe Game do
  it 'intantiates with two player instances' do
    game = Game.new(Player.new('player1'), Player.new('player2'))
    expect(game.player1).to be_instance_of(Player)
  end
end
