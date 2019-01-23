class Player
attr_reader :hitpoints
attr_reader :name
  def initialize(name)
    @name = name
    @hitpoints = 20

  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hitpoints -= 10
  end

end
