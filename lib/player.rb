class Player

  attr_accessor :name, :hp

  def initialize
    @name
    @hp = 100
  end

  def receive_damage
    @hp -= 10
  end
end
