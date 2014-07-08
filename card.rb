class Card
  
  FACE_VALUES = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
  HIGHER = 1
  LOWER = -1
  EQUAL = 0 
  attr_reader :description

  def initialize(description)
    @description = description
  end
  
  def <=> another_card
    result = HIGHER if value(@description) > value(another_card.description)
    result = LOWER if value(@description) < value(another_card.description)
    result = EQUAL if value(@description) == value(another_card.description)
    result  
  end

private

  def value card
    FACE_VALUES.index(card.chars.first)
  end 
end