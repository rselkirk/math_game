class Player

  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def decrease_life
    @score -= 1
  end

end