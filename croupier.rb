class Croupier
  RANK = "Highest card"
  SEPARATOR = " : "
  WINS = " wins with "



  def self.check hand_one, hand_two
    result=""
    player_one=Hand.new(hand_one)
    player_two=Hand.new(hand_two)

    comparison= (player_one <=> player_two)
    winner_card = player_one.winner_of_last_comparison
    result = compose("Player one",winner_card) if comparison == 1
    result = compose("Player two",winner_card) if comparison == -1
    result
  end

  def self.compose player,card
    player + WINS + RANK + SEPARATOR + card
  end

end
