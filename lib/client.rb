require_relative "client_socket"

class Client
  c = ClientSocket.new("localhost", 2000)
  loop{
    puts c.read
    c.write(gets)
  }
end