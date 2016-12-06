require 'pry'
require './MathGame'

# binding.pry

p1 = MathGame::Player.new('Jeffrey')
p2 = MathGame::Player.new('Jebbie')
new_game = MathGame::Game.new(p1, p2)


until new_game.game_over? do
  puts "----- NEW TURN -----"
  new_question = MathGame::Question.new

  puts "#{new_game.current_player.name}: #{new_question.print_equation}?"
  print "> "
  answer = $stdin.gets.chomp.to_i

  if !new_question.check_equation(answer)
    new_game.current_player.lose_life
    puts new_question.wrong_answer
    puts
  else
    puts new_question.right_answer
    puts
  end

  puts "#{new_game.player1.name} #{new_game.player1.life}/#{MathGame::Player::LIVES} vs #{new_game.player2.name} #{new_game.player2.life}/#{MathGame::Player::LIVES}"
  puts

  new_game.change_player
end
  new_game.print_result


