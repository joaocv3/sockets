class Player
  attr_accessor :client, :name, :player_number, :cards
  
  def initialize(client, name, player_number)
    @client = client
    @name = name
    @player_number = player_number
    @cards = []
  end

  def cards=(card)
    @cards << card
  end
end