RSpec.describe ' all matcher' do
  it 'allows for aggregate checks' do
    # [5, 7, 9].each do |val|
    #   expect(val).to be_odd
    # end

    expect([1, 3, 5]).to all(be_odd)
    expect([6, 8, 10]).to all(be_even)
    expect([true, true, true]).to all(be true)
    expect([6, 8, 10]).to all(be <= 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
