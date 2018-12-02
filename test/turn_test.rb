require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require 'pry'

class TurnTest < Minitest::Test

  def test_it_exists
   card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   turn = Turn.new("Juneau", card)
   assert_instance_of Turn, turn
  end

  def test_guess_method
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal "Juneau", turn.guess
  end

  def test_card_method
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    # binding.pry
    assert_equal card, turn.card
  end

  def test_if_guess_returns_correct
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal true, turn.correct?

    card_two = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn_two = Turn.new("Mobile", card_two)
    assert_equal false, turn_two.correct?
  end

  # def test_guess_of_card
  #   turn = Turn.new("12 of clubs")
  # end

end
