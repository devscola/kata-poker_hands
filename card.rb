class Card
  
  FACE_VALUES = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
  attr_reader :description

  def initialize(description)
    @description = description
  end
  
  def <=> another_card
     return 1 if value(@description) > value(another_card.description)
     return -1 if value(@description) < value(another_card.description)
  end

private

  def value card
    FACE_VALUES.index(card.chars.first)
  end 
end