require './players.rb'
require './questions.rb'
require './turns.rb'

class Game
  def self.run
    puts "Let the game begin!"

    p1 = Player.new("Player 1")
    p2 = Player.new("Player 2")

    current_game_turn = Turns.new
 
    while p1.score != 0 && p2.score != 0
      
      # set current player
      if current_game_turn.turn.odd?
        current_player = p1
      else
        current_player = p2
      end

      puts "----- NEW TURN -----"

      new_question = Question.new
      puts "#{current_player.name}: What does #{new_question.one} plus #{new_question.two} equal?"

      # get answer
      answer = gets.chomp

      # evaluate answer
      if answer.to_i === new_question.sum
        puts "Right answer!"
      else
        puts "Wrong answer, #{current_player.name}!"
        current_player.decrease_life
      end

      # change player turn
      current_game_turn.increase

      # print current score
      if p1.score != 0 && p2.score === 0
        puts "Player 1 wins!"
      elsif p2.score != 0 && p2.score === 0
        puts "Player 2 wins!"
      else 
        puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
      end
    end

   puts "----- GAME OVER -----"
   puts "Goodbye!"

  end
end

Game.run