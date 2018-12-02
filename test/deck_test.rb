require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/turn'
require 'pry'

class DeckTest <Minitest::Test
  def test_it_exists
    card_one = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_two = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_three = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_one, card_two, card_three]
    deck = Deck.new(cards)
    assert_instance_of Deck, deck
  end

  def test_count_method
    card_one = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_two = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_three = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_one, card_two, card_three]
    deck = Deck.new(cards)
    assert_equal 3, deck.count
  end

  def test_category_method
      card_one = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_two = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_three = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_one, card_two, card_three]
      deck = Deck.new(cards)
      assert_equal card_one, deck.cards_in_category(:Geography)
  end

end
