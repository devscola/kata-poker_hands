class Croupier
  RANK = "Highest card"
  SEPARATOR = " : "
  FACE_VALUES = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
  WINS = " wins with "

  def self.check hand_one, hand_two
    winner= ""

    (1..5).each do |position|
      break if winner!=""
      highest_one = highest_card_in_position(position,hand_one)
      highest_two = highest_card_in_position(position,hand_two)
      next if (value(highest_two) == value(highest_one)) 
      winner= compose("Player one",highest_one)
      winner= compose("Player two",highest_two) if (value(highest_two)> value(highest_one))
    end

    winner
  end

  def self.compose player,card
    player + WINS + RANK + SEPARATOR + card
  end

  def self.check_hand a_hand
    highest_card = highest_card (a_hand)
    RANK+ SEPARATOR + highest_card
  end

  def self.highest_card(a_hand)
    cards = a_hand.split(' ')
    ordered = cards.sort do |a_card, another_card|
      comparison = value(a_card) - value(another_card) 
    end
    ordered.last
  end

  def self.highest_card_in_position(position,a_hand)
    cards = a_hand.split(' ')
    ordered = cards.sort do |a_card, another_card|
      comparison = value(another_card) - value(a_card) 
    end
    ordered[position-1]
  end

  def self.value card
    FACE_VALUES.index(card[0,1])
  end 
end
