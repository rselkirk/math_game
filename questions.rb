class Question

  attr_reader :one, :two, :sum

  def initialize
    @one = rand(1..20)
    @two = rand(1..20)
    @sum = @one + @two
  end

end