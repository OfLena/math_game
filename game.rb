require_relative './player'
require_relative './question'

class Game

def initialize
  @player1 = Player.new("Winnie")
  @player2 = Player.new("Beatrix")
  @players = [@player1, @player2]
  @current_player = @player1
  @round = 1
end

def game_over?
  @players.any? {|player| player.zero_lives?}
end

def next_round
  @current_player = (@current_player == @player1) ? @player2 : @player1;
  @round += 1
end

def display_lives
  puts "              Lives Remaining                     "
  @players.each { |player| puts "#{player.name} : #{player.lives}" }
  if @current_player.lives == 0
    puts "\n Game Over! \n Good Bye!"
  end
end

  def start_game
   until (game_over?) do
      puts "==================="
      puts "  Round #{@round}  "
      puts "==================="

      question = Question.new
      question.ask_question(@current_player.name)
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "YES! You are correct!"
      else
        puts "Seriously? No!"
        @current_player.lives -= 1
      end
        
      display_lives
      next_round
      sleep 1
    end
  end
end