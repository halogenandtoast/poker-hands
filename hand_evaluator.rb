%w(royal_flush straight_flush four_of_a_kind full_house flush straight three_of_a_kind two_pair one_pair high_card).each do |hand|
  require_relative "hands/#{hand}"
end

class HandEvaluator
  POSSIBLE_HANDS = [
    RoyalFlush,
    StraightFlush,
    FourOfAKind,
    FullHouse,
    Flush,
    Straight,
    ThreeOfAKind,
    TwoPair,
    OnePair,
    HighCard
  ]

  def initialize(cards)
    @cards = cards
  end

  def in_english
    result.to_s
  end

  private

  attr_reader :cards

  def result
    @result ||= hands.find { |hand| hand.valid? }
  end

  def hands
    POSSIBLE_HANDS.map do |hand|
      hand.new(cards)
    end
  end
end
