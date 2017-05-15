require_relative 'lib/game_controller'

puts "How many players?"
players_number = gets

puts "Which port?"
port = gets.to_i

GameController.new(port, players_number)