require_relative '../lib/player_binder'
require_relative '../lib/client_socket'
require_relative '../lib/server_socket'

RSpec.describe PlayerBinder, "#perform" do
  context "with server open and defined number of players" do
    it "joins the required number of players" do
      t = Thread.new {
        server = ServerSocket.new 2000
        players_number = 2
        players = PlayerBinder.new(players_number, server).perform

        expect(players[0].name.chomp).to eql("John")
     }

     sleep 0.1 # Make sure that the server is started before the client

     [["John", ClientSocket.new("localhost", 2000)],
      ["Jane", ClientSocket.new("localhost", 2000)]].
      each do |player, client|
        expect(client.read.chomp).to eql("What's your name?")
        client.write "#{player}\n"
      end
      t.join
    end
  end
end