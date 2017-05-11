require_relative "client_socket"

class Client
  c = ClientSocket.new("localhost", 2000)
  loop{
    c.read
    c.write
  }
end