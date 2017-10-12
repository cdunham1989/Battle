class Player

attr_reader :name, :hp

DEFAULT_HP = 60
DEFAULT_HARM = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(foe)
    foe.gets_attacked
  end

  def gets_attacked(harm = DEFAULT_HARM)
    @hp -= harm
  end
end
