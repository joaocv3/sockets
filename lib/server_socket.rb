require 'socket'

class ServerSocket
  def initialize(port)
    @server = TCPServer.new port
  end

  def accept
    @server.accept
  end

  def close(players)
    players.each do |player|
      player.client.close
    end
    @server.close
  end
end
