require_relative "../card" # Test uses the library! (yet to be coded)

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  it 'has a rank and can change rank' do
    expect(card.rank).to eq('Ace')
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end
  it 'has a suit' do
    card.suit = "Spades"
    expectation = 'Spades'
    expect(card.suit).to eq(expectation), "We are expecting #{expectation}, we got #{card.suit}, think about it"
  end
end
