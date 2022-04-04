class Question

  def initialize
    @num1 = rand(0..10)
    @num2 = rand(0..10)
  end

  def ask_question(name)
      puts "#{name} asks What is #{@num1} + #{@num2} ?"
  end

  def answer
    @num1 + @num2
  end
end
