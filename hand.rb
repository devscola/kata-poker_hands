class Hand
  def initialize hand_description
    cards_descriptions = hand_description.split(' ')
    @cards = cards_descriptions.map { |description| Card.new(description) }
    @cards = @cards.sort
  end

  def highest_card
    @cards.last
  end
end