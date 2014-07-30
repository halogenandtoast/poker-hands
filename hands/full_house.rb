require_relative "base_hand"

class FullHouse < BaseHand
  def valid?
    of_a_kind?(3) && of_a_kind?(2)
  end

  def to_s
    "Full house"
  end
end
