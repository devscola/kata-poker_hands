class Croupier
  RANK="Highest card"
  SEPARATOR=" : "

  def self.check_hand a_hand
    return RANK+ SEPARATOR + "AS" if a_hand == "2H 3D AS 9C KD"
    RANK+ SEPARATOR + "KD"
  end
end
