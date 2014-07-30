require_relative "base_hand"

class TwoPair < BaseHand
  def valid?
    cards.group_by(&:value).count { |value, group| group.length == 2 } == 2
  end

  def to_s
    "Two pair"
  end
end
