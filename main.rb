require_relative './player'

class Game

def initialize
  @player1 = Player.new("Winnie")
  @player2 = Player.new("Beatrix")
  @players = [@player1, @player2].shuffle
  @round = 1
end

def game_over?
  @players.any? {|player| player.zero_lives?}
end

def next_round
  @players.rotate!
  @round += 1
end

def display_lives
  puts "              Lives Remaining                     "
  @players.each { |player| puts "#{player.name} : #{player.lives}" }
end

  def start_game
   until (game_over?) do
      puts "==================="
      puts "  Round #{@round}  "
      puts "==================="

      quizzer = @players.first
      responder = @players.last

      

      quizzer.ask_question
      responder.answer_question

      display_lives
      next_round
      sleep 1
    end
  end
end

game1 = Game.new

game1.start_game