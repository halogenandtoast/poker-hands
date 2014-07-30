require_relative "base_hand"

class Flush < BaseHand
  def valid?
    cards.drop(1).all? { |card| card.suit == cards.first.suit }
  end

  def to_s
    "Flush"
  end
end
