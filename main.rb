require './players.rb'
require './questions.rb'

class Game
  def self.run
    puts "Let the game begin!"

    p1 = Player.new("Player 1")
    p2 = Player.new("Player 2")

    puts p1[:name]

  end
end

Game.run