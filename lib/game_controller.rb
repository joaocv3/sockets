require_relative 'server_socket'
require_relative 'player_binder'

class GameController
  server = ServerSocket.new 2000

  puts "How many players?"
  players_number = gets

  players = PlayerBinder.new(players_number, server).perform
end