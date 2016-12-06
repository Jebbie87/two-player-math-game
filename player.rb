module MathGame
  class Player
    LIVES = 3

    attr_reader :name
    attr_accessor :life

    def initialize(name)
      @name = name
      @life = LIVES
    end

    def original_lives
      LIVES
    end

    def lose_life
      if @life > 0
        @life -= 1
      end
    end

    def dead?
      @life === 0
    end
  end
end