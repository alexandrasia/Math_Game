require_relative './player.rb'

class Turn

  def initialize(player)
    @player = player
    @user_answer = nil
    #make random
    @num1 = 2
    @num2 = 3
    @answer = @num1 + @num2
  end


  def ask_question
    puts "What does #{@num1} plus #{@num2} equal?"
  end


  def get_user_answer
    @user_answer = gets.chomp
  end

  def evaluate_answer
    @answer.to_s == @user_answer
  end


  def check_score()
    if evaluate_answer
  end


end


