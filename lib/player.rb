class Player
  attr_accessor :client, :name, :player_number
  
  def initialize(client, name, player_number)
    @client = client
    @name = name
    @player_number = player_number
  end
end