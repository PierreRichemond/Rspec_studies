class HotChocolate
  def drink
    "delicious"
  end

  def discard
    "PLOP"
  end

  def purchase(number)
    "Awesome, I just puchased #{number} hot chocolate!"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink, :purchase, :discard)
  end
  it { is_expected.to respond_to(:drink) }

  it 'confirms that an object can respond to a method with argument' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end
