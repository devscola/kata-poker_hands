class Card
  
  FACE_VALUES = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
  HIGHER = 1
  LOWER = -1
  EQUAL = 0 

  def initialize(description)
    @description = description
  end
  
  def <=> another_card
    result = HIGHER if value > another_card.value
    result = LOWER if value < another_card.value
    result = EQUAL if value == another_card.value
    result  
  end

  def value 
    FACE_VALUES.index(@description.chars.first)
  end 
end