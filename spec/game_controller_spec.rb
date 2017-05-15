require_relative '../lib/game_controller'
require_relative '../lib/client_socket'

RSpec.describe GameController, "#start" do
  context "When a new game is started" do
    before(:all) do
      t = Thread.new {
        players_number = 8
        port = 2000
        @game = GameController.new(port, players_number)
      }

      sleep 0.1 # Make sure that the server is started before the client

      [["John", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)],
       ["Jane", ClientSocket.new("localhost", 2000)]].
      each do |player, client|
        client.read.chomp
        client.write "#{player}\n"
      end
  
      t.join
    end

    after(:all) do
      @game.server.close(@game.players)
    end

    it "Gives the right number of cards for each player" do
      expect(@game.players.first.cards.count).to eql(4)
    end
  end
end
