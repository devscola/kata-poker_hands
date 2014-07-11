class Hand
  HAND_SIZE = 5
  attr_reader :cards
  @winner_card = nil

  def initialize hand_description
    cards_descriptions = hand_description.split(' ')
    @cards = cards_descriptions.map { |description| Card.new(description) }
    @cards = @cards.sort
  end

  def highest_card
    @cards.last
  end

  def winner_of_last_comparison
    @winner_card.to_s
  end

  def <=> to_compare
    comparison = 0
    pointer = 0
    (1..5).each do |position|
      break if (comparison != 0)
      pointer= HAND_SIZE - position
      highest_one = @cards[pointer] 
      highest_two = to_compare.cards[pointer]
      comparison = (highest_one.value <=> highest_two.value) 
    end
    @winner_card=@cards[pointer] if comparison == 1
    @winner_card=to_compare.cards[pointer] if comparison == -1
    comparison
  end
end