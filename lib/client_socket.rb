require 'socket'

class ClientSocket
  def initialize(host, port)
    @server = TCPSocket.new host, port
  end

  def read
    @server.gets # Print line from server socket
  end

  def write(message)
    @server.print message
  end
end
