require './card'

describe "Card" do
  
  it "knows if is higher than other card" do
    a_card=Card.new("AS")
    another_card= Card.new("9D")
    expect(a_card <=> another_card).to eq(1)
  end

  it "knows if is lower than other card" do
    a_card=Card.new("AS")
    another_card= Card.new("9D")
    expect(another_card <=> a_card).to eq(-1)
  end
end