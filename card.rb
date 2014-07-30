class Card
  SUITS = %w(C D H S)
  VALUES = %w(A 2 3 4 5 6 7 8 9 T J Q K)

  attr_reader :value, :suit

  def initialize(options)
    @value = options.fetch(:value)
    @suit = options.fetch(:suit)
  end

  def to_s
    "#{VALUES[value]}#{SUITS[suit]}"
  end
end
