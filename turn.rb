require_relative './player.rb'
require_relative './game.rb'

class Turn

  def initialize(player)
    @player = player
    @user_answer = nil
    @num1 = Random.new.rand(1..20)
    @num2 = Random.new.rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question
    puts "#{@player.name} What does #{@num1} plus #{@num2} equal?"
  end

  def get_user_answer
    @user_answer = gets.chomp
  end

  def evaluate_answer
    correct = @answer.to_s == @user_answer
    if correct == true
      puts "Correct!"
    else
      puts "Wrong!"
      @player.wrong_answer
    end
  end

end


