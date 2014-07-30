require_relative "base_hand"

class OnePair < BaseHand
  def valid?
    of_a_kind?(2)
  end

  def to_s
    "One pair"
  end
end
