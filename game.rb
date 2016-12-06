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

    def print_result
      if @player1.dead?
        puts "#{@player2.name} wins with a score of #{@player2.life}/#{@player2.original_lives}"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      elsif @player2.dead?
        puts "#{@player1.name} wins with a score of #{@player1.life}/#{@player1.original_lives}"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end
    end

    def game_over?
      @player1.dead? || @player2.dead?
    end

  end
end
