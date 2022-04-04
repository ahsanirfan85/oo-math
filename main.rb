require_relative './player'
require_relative './question'
require_relative './turn'

puts ""
puts ""
puts "Let's Play..."
puts ""
puts ""
puts "--------------------------"
puts "|OBJECT ORIENTED ADDITION|"
puts "--------------------------"
puts ""
puts ""

player_1 = Player.new(1)
player_2 = Player.new(2)
current_player = player_1

puts "Get ready, #{current_player.name}! You're up first!"
puts ""

while player_1.lives > 0 && player_2.lives > 0 do
  
  new_turn = Turn.new(current_player)
  new_turn.take_next_turn

  

  puts "The current score is..."
  puts "-----------------------"
  puts "Player #1: #{player_1.lives} lives"
  puts "Player #2: #{player_2.lives} lives"

  if player_1.lives > 0 && player_2.lives > 0
    if current_player == player_2
      current_player = player_1
    else
      current_player = player_2
    end
    puts ""
    puts "Get ready, #{current_player.name}! You're up next!"
    puts ""
  else
    puts ""
    puts "#{current_player.name} has lost all their lives!"
    puts ""
    puts "The game is over!"
    puts ""
    puts "Thanks for playing..."
    puts ""
    puts ""
    puts "--------------------------"
    puts "|OBJECT ORIENTED ADDITION|"
    puts "--------------------------"
    puts ""
    puts ""
  end
end