require './card'

describe "Card" do
  context 'When comparing cards' do
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

    it "knows if is equal than other card" do
      a_card=Card.new("AS")
      another_card= Card.new("AS")
      expect(another_card <=> a_card).to eq(0)
    end
    
    it "knows that is not comparable" do
      a_card=Card.new("AS")
      expect(a_card <=> "AS").to be_nil
    end
  end
  
  it "knows how to express in a string" do
    expect(Card.new("AS").to_s).to eq("AS")
  end
end