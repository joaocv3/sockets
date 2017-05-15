class CardDealer
  def initialize(players_number, players, cards)
    @cards_each_player = 33/players_number.to_i
    @players = players
    @cards = cards
  end

  def deal
    @players.each do |player|
      @cards_each_player.times do 
        card_number = rand(@cards.count) # Get a random card number
        player.cards = @cards[card_number]
        @cards.delete_at(card_number)
      end
    end

    @players
  end
end
