require './hand'
describe "A poker Hand" do
  it "knows its highest card" do
    expect(Hand.new("2H 5S 3D 9C KD").highest_card.to_s).to eq("KD")
  end
  
end