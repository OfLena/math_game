require_relative './player'

class Question

  def ask_question
    num1 = gets.chomp
    num2 = gets.chomp
   puts " asks: What is #{num1} + #{num2} ?"
  end

  def answer_question
    puts 
  end
end

puts ask_question