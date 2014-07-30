class Player
  attr_reader :name, :hand

  def initialize(number)
    @name = "Player #{number}"
    @hand = []
  end

  def deal(cards)
    @hand += cards
  end
end
