module MathGame
  class Question
    attr_reader :num1, :num2
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def print_equation
      "What is #{@num1} plus #{@num2}"
    end

    def check_equation(answer)
      answer === @num1 + @num2
    end

    def right_answer
      ["Smarty pants", "WOOOOOWWWWW YOU SO SMART", "Math must be easy for you huh?"].sample
    end

    def wrong_answer
      ["I think you need some more math lessons", "This is basic math.....", "Please. Not like this"].sample
    end
  end
end
