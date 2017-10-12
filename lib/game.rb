class Game

  def initialize(p1name, p2name)
    $player_1 = Player.new(p1name)
    $player_2 = Player.new(p2name)
  end

  def attack(attacker, attackee)
    attackee.gets_attacked
  end
end
