require_relative "base_hand"

class HighCard < BaseHand
  def valid?
    true
  end

  def to_s
    "High card: #{high_card}"
  end

  private

  def high_card
    cards.find { |card| card.value == 0 } || super
  end
end
