require 'socket'

class ClientSocket
  def initialize(host, port)
    @server = TCPSocket.new host, port
  end

  def read
     puts @server.gets # Print line from server socket
  end

  def write
    message = gets
    @server.print message
  end
end
