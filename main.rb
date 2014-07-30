%w(card deck player poker poker_result_printer).each do |file|
  require_relative file
end

players = 1.upto(4).map { |number| Player.new(number) }
cards = 52.times.map { |i| Card.new(value: i % 13, suit: i / 13) }
deck = Deck.new(cards)

poker = Poker.new(players: players, deck: deck)
poker.play

PokerResultPrinter.new(poker.players).print
