class Deck
  def self.build
  end
end



class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implementon a class method that are defined on a class' do
    class_double(Deck, build: ["Ace", "Queen"])
  end
end
