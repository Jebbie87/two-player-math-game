require 'pry'
require './MathGame'

# binding.pry

p1 = MathGame::Player.new('Jeffrey')
p2 = MathGame::Player.new('Jebbie')
new_game = MathGame::Game.new(p1, p2)
new_turn = MathGame::Turn.new

# puts MathGame::Turn.new
# puts new_turn.new_turn

 until p1.life === 0 || p2.life === 0 do
  puts "----NEW TURN----"
  new_question = MathGame::Question.new
  new_question.print_equation
  answer = $stdin.gets.chomp.to_i
  # puts new_game.current_player
  if !new_question.check_equation(answer)
    new_game.current_player.life_lost
    new_game.change_player = new_game.other_player
  end
end


