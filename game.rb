module MathGame
  class Game
    attr_accessor :player1, :player2, :current_player

    def initialize(player1, player2)
      @current_player = player1
      @player1 = player1
      @player2 = player2
    end

    def change_player
      if @current_player === @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end

    def game_over?
      if @player1.life == 0
        puts "#{@player2.name} wins with a score of #{@player2.life}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      elsif @player2.life == 0
        puts "#{@player1.name} wins with a score of #{@player1.life}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end
    end
  end
end

