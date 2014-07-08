require './croupier'

describe "A croupier in the casino " do

	context 'when checking a player hand' do
    it "identifies the highest card" do
      expect(Croupier.check_hand("2H 3D 5S 9C KD")).to eq("Highest card : KD")
      expect(Croupier.check_hand("2H 3D AS 9C KD")).to eq("Highest card : AS")
      expect(Croupier.check_hand("2H 3D 4H 9C 6D")).to eq("Highest card : 9C")      
    end
  end

  context 'when checking two players hands' do
    it "identifies the winner with highest card " do
      expected = "Player one wins with Highest card : KD"
      reverse_expected = "Player two wins with Highest card : KD"
      a_hand = "2H 3D 5S 9C KD"
      another_hand = "2H 3D 4H 9C 6D"
      expect(Croupier.check(a_hand,another_hand)).to eq(expected)
      expect(Croupier.check(another_hand,a_hand)).to eq(reverse_expected)
    end
  end

end