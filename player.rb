module MathGame
  class Player
    attr_reader :name
    attr_accessor :life

    def initialize(name)
      @name = name
      @life = 3
    end

    def life_lost
      @life -= 1
    end
  end
end