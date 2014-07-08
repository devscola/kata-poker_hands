require './card'

describe "Card" do
  
  it "can be compared by face value" do
    a_card=Card.new("AS")
    another_card= Card.new("9D")
    expect(a_card <=> another_card).to eq(1)
  end

end