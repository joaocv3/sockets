require_relative 'player'

class PlayerBinder
  def initialize(players_number, server)
    @server = server
    @players_number = players_number
  end
  
  def perform
    players = []

    @players_number.times.each_with_index do |player_number|
      puts "Server waiting player #{player_number} to connect"
      client = @server.accept # Wait for a client to connect
      client.puts "What's your name?"
      name = client.gets

      puts "Player #{player_number} connected"

      players << Player.new(client, name, player_number)
    end

    players
  end
end

