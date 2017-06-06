require_relative './player.rb'
require_relative './turn.rb'






class Game

  def initialize
    # @game_over = false
    # @player_1 = Player.new('player_1')
    # @player_2 = Player.new('player_2')

    @players = [Player.new("First"), Player.new("Second")]
    @current_player_index = 0
  end

  def play
    # while loop here
    while (one_player_dead?) do
      turn = Turn.new(@players[@current_player_index])
      turn.play
      if (one_player_dead?)
        next_player
      end
    end
  end

  private

  def next_player
    # update @current_player_index
  end

  def one_player_dead?
    true
    #TODO
  end

end




