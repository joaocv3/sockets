require_relative 'server_socket'
require_relative 'player_binder'
require_relative 'card_generator'
require_relative 'card_dealer'

class GameController
  attr_reader :server, :players

  def initialize(port, players_number)
    @server = ServerSocket.new port

    players = PlayerBinder.new(players_number, @server).perform
    cards = CardGenerator.new.perform

    @players = CardDealer.new(players_number, players, cards).deal
  end
end