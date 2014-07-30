class Poker
  attr_reader :players

  def initialize(options)
    @players = options.fetch(:players)
    @deck = options.fetch(:deck)
  end

  def play
    shuffle_deck
    deal_cards
  end

  private

  attr_reader :deck

  def shuffle_deck
    deck.shuffle
  end

  def deal_cards
    players.each { |player| player.deal deck.draw(5) }
  end

end
