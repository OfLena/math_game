class Player

attr_reader :name
attr_accessor :lives, :num1, :num2, :input



  def initialize(name)
    @name = name
    @lives = 3
    @num1 = rand(0..10)
    @num2 = rand(0..10)
  end

  def zero_lives?
    @lives == 0
  end



  # def is_answer_correct?  
  #   # puts @input
  #   puts @num1
  #   puts @num2
  #   # @input = input
  #   # if (@num1 + @num2) == @input ? @lives : @lives -= 1
  #   # end
  # end


end

