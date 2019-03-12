class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(another_player)
    @name == another_player.name
  end

  def to_s
    @name
  end
end
