require_relative './player.rb'
require_relative './turn.rb'

class Game

  def initialize
    @players = [Player.new('First_Player'), Player.new('Second_Player')]
    @current_player_index = 0
  end

  def play
    # while loop here
    while (two_players?) do
      turn = Turn.new(@players[@current_player_index])
      turn.ask_question
      turn.get_user_answer
      turn.evaluate_answer
      check_score
      puts " ***** NEW TURN *****"
      next_player
    end
    end_game
  end

  private

  def check_score
    puts "#{@players[0].name}: #{@players[0].life}/3 #{@players[1].name}: #{@players[1].life}/3"
  end

  def end_game
    if @players[0].game_over?
      puts "#{@players[1].name} is the Winner!"
    else
      puts "#{@players[0].name} is the Winner!"
    end
    puts "Game over"
  end

  def next_player
    if @current_player_index == 0
      @current_player_index = 1
    else
      @current_player_index = 0
    end
  end

  def two_players?
    # will be true as long as two people are there, when there is one, it stops the while loop
    !(@players[0].game_over? || @players[1].game_over?)
  end
end




