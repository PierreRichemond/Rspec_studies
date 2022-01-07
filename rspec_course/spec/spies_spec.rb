RSpec.describe 'Spies' do
  let(:animal) { spy("animal") }

  it 'confirms that the message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'retains the same functionnality as the double helper' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).once.with("Sushi")
    expect(animal).to have_received(:eat_food).with("Sushi")
  end

end
