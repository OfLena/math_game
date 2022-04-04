class Player

attr_reader :name
attr_accessor :lives


  def initialize(name)
    @name = name
    @lives = 3
  end

  def zero_lives?
    @lives == 0
  end

  def ask_question
    num1 = rand(0..10)
    num2 = rand(0..10)
    puts "#{@name} asks: What is #{num1} + #{num2} ?"
  end

  def answer_question
    input = gets.chomp
  end

  def is_answer_correct?
    if num1 + num2 = input
      @lives -= 1
    end
  end


end

