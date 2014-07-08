class Croupier
  RANK="Highest card"
  SEPARATOR=" : "
  FACE_VALUES=["2","3","4","5","6","7","8","9","T","J","Q","K","A"]

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

  def self.value card
    FACE_VALUES.index(card[0,1])
  end 
end
