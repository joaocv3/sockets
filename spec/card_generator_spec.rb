require_relative "../lib/card_generator"

RSpec.describe CardGenerator, "#perform" do
  context "with no cards defined" do
    it "generates all 33 cards " do
      cards = CardGenerator.new.perform
      expect(cards.count).to eql(33)
      expect(cards[32].name).to eql("SUPER TRUNFO")
    end
  end
end