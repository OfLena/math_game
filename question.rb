class Question

  attr_reader :ask_question, :question_answer
  
  def initialize
    num1 = rand(0..10)
    num2 = rand(0..10)
    @ask_question = "What is #{@num1} + #{@num2} ?"
    @question_answer = num1 + num2
  end
end
# def ask_question
#   # @num1 = rand(0..10)
#   # @num2 = rand(0..10)
#   puts "#{@name} asks: What is #{@num1} + #{@num2} ?"
# end

# def answer_question
#   input = gets.chomp
#   # @input = input
#   if @num1 + @num2 = input ? @lives : @lives -= 1
#   end
#   puts @num1
# end

