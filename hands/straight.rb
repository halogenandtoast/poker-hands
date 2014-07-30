require_relative "base_hand"

class Straight < BaseHand
  def valid?
    straight?
  end

  def to_s
    "Straight"
  end
end
