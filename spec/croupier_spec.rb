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
      player_one = "2H 3D 5S 9C KD"
      player_two = "2H 3D 4H 9C 6D"
      expect(Croupier.check(player_one,player_two)).to eq(expected)
    end
  end
end