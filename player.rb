require_relative './turn.rb'


class Player

  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def wrong_answer
    @life -= 1
  end

  def gameover?
    @life == 0
  end

end








