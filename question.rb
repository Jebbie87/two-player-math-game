module MathGame
  class Question
    attr_reader :num1, :num2
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def print_equation
      puts "What is #{@num1} plus #{@num2}"
    end

    def check_equation(answer)
      answer === @num1 + @num2
    end
  end
end
