require_relative "hand_evaluator"

class PokerResultPrinter
  def initialize(players, options = {})
    @players = players
    @evaluator = options[:evaluator] || HandEvaluator
  end

  def print
    players.each do |player|
      print_header(player.name)
      print_hand(player.hand)
      print_result(player.hand)
    end
  end

  private

  attr_reader :evaluator, :players

  def print_header(name)
    puts name
    puts "-" * name.length
  end

  def print_hand(hand)
    puts hand.map(&:to_s)
  end

  def print_result(hand)
    puts
    puts result_for(hand).in_english
    puts
  end

  def result_for(hand)
    evaluator.new(hand)
  end
end
