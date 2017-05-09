class Turns

  attr_reader :turn
  attr_accessor :turn

  def initialize
    @turn = 1
  end

  def increase
    @turn += 1
  end

end
