require './croupier'

describe "A croupier in the casino " do
	context 'when checking a player hand' do
    it "identifies the highest card" do
      expect(Croupier.check_hand("2H 3D 5S 9C KD")).to eq("Highest card : KD")
      expect(Croupier.check_hand("2H 3D AS 9C KD")).to eq("Highest card : AS")      
    end
  end
end