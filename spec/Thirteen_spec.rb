require "Thirteen"

describe "Thirteen" do
  let(:player) { Player = HumanPlayer.new }
  let(:game) { Thirteen.new(player) }

  describe "#initialize" do
    it "should accept arguments: number of players (At least one must be Human)" do
      expect { game }.to_not raise_error
      expect(player.class).to eq(HumanPlayer)
    end
  end

  describe "::DECK" do
    it "should be a hash with all 52 cards" do
      expect(Thirteen::DECK).to be_instance_of(Hash)
    end
  end

  # describe "#deal" do
  #   it "should randomly deal 13 cards from DECK to each player" do
  #     expect player1
  #   end
  # end

  describe "#count" do
    context "At the start of game, all players should have 13 cards" do
      it "should be able to count number of cards in all player's hands" do
        hand = ["7c", "kd", "9c", "8c", "7d", "10d", "2s", "6d", "5h", "jh", "6c", "3c", "9s"]
        expect(hand.count).to eq(13)
      end
    end

    context "When there is a winner" do
      it "one player's hand count should equal 0" do
        hand = []
        expect(hand.count).to eq(0)
      end
    end

  end

  describe "#win" do
    context "When a player's hand is empty" do
      it "should return true" do
        hand = []
        expect(hand.count).to eq(0)
      end
    end

    context "When no player's hand is empty" do
      it "should return false" do
        hand = ["7c", "kd", "9c", "8c", "7d", "10d", "2s", "6d", "5h", "jh", "6c", "3c", "9s"]
        expect(hand.count).not_to eq(0)
      end
    end
  end

end
