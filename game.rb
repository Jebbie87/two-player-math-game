module MathGame
  class Game
    attr_accessor :player1, :player2, :current_player

    def initialize(player1, player2)
      @current_player = player1
      @player1 = player1
      @player2 = player2
    end

    def change_player=(new_player)
      @current_player = new_player
    end
  end
end
