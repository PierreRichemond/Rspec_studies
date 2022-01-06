RSpec.describe 'comparison Matcher' do
  it 'allows for comparison with built in Ruby operators' do
    expect(10).to be > 5
    expect(9).to be < 10

    expect(1).to be >= 1
    expect(-1).to be <= 1
  end

  describe 100 do
    it { is_expected.to be > 99 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 999 }
    it { is_expected.to be <= 100 }
    it { is_expected.not_to be > 105 }
  end
end
