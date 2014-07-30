class BaseHand
  ROYAL_VALUES = [0, 9, 10, 11, 12]

  def initialize(cards)
    @cards = cards
  end

  def valid?
    false
  end

  def to_s
    raise "Not possible to get here"
  end

  private

  attr_reader :cards

  def card_values
    cards.map(&:value)
  end

  def royal?
    card_values.sort == ROYAL_VALUES.sort
  end

  def straight?
    royal? || straight_range == card_values.sort
  end

  def straight_range
    low_card.value..high_card.value
  end

  def of_a_kind?(number)
    cards.group_by(&:value).any? { |value, group| group.length == number }
  end

  def high_card
    cards.max_by(&:value)
  end

  def low_card
    cards.min_by(&:value)
  end
end
