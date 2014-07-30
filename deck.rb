class Deck
  def initialize(cards)
    @cards = cards
  end

  def shuffle
    cards.shuffle!
  end

  def draw(count = 1)
    cards.shift(count)
  end

  private

  attr_reader :cards
end
