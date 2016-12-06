require 'pry'
require './MathGame'

# binding.pry

p1 = MathGame::Player.new('Jeffrey')
p2 = MathGame::Player.new('Jebbie')
new_game = MathGame::Game.new(p1, p2)
new_turn = MathGame::Turn.new


 until p1.life === 0 || p2.life === 0 do
  puts "----- NEW TURN -----"
  new_question = MathGame::Question.new
  puts "#{new_game.current_player.name}: #{new_question.print_equation}?"
  print "> "
  answer = $stdin.gets.chomp.to_i
  # puts new_game.current_player.name
  if !new_question.check_equation(answer)
    new_game.current_player.life_lost
    puts new_question.wrong_answer
    puts
  else
    puts new_question.right_answer
    puts
  end
  puts "#{new_game.player1.name} #{new_game.player1.life}/3 vs #{new_game.player2.name} #{new_game.player2.life}/3"
  puts
  if new_game.current_player === new_game.player1
    new_game.change_player = new_game.player2
  else
    new_game.change_player = new_game.player1
  end

  if new_game.player1.life == 0
    puts "#{new_game.player2.name} wins with a score of #{new_game.player2.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  elsif new_game.player2.life == 0
    puts "#{new_game.player1.name} wins with a score of #{new_game.player1.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end


