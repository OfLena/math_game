class Player

attr_reader :name
attr_accessor :lives


  def initialize(name)
    @name = name
    @lives = 3
  end

  def game_over?
    @lives = 0
  end

end

player1 = Player.new("Guy")
