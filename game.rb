module MathGame
  class Game
    attr_accessor :current_player, :other_player

    def initialize(player, player2)
      @current_player = player
      @other_player = player2
    end

    def change_player=(new_player)
      @other_player = @current_player
      @current_player = new_player
    end
  end
end
