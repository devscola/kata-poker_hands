class Croupier
  RANK="Highest card"
  SEPARATOR=" : "

  def self.check_hand a_hand
    highest_card = highest_card (a_hand)
    RANK+ SEPARATOR + highest_card
  end

  def self.highest_card(a_hand)
    cards = a_hand.split(' ')
    face_values = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
    ordered = cards.sort do |a_card, another_card|
      comparison = face_values.index(a_card[0,1]) - face_values.index(another_card[0,1]) 
    end
    ordered.last
  end

end
