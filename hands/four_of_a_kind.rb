require_relative "base_hand"

class FourOfAKind < BaseHand
  def valid?
    of_a_kind?(4)
  end

  def to_s
    "Four of a kind"
  end
end
