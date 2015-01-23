class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def make_move
    gets.chomp.to_i
  end
end
