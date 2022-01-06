RSpec.describe 'Satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
     # error would be 'expected "racecars" to satisfy expression `value == value.reverse`'
  end
  it 'is a palindrome' do
    expect(subject).to satisfy('be a palindrome') { |value| value == value.reverse }
    # error would be 'expected "racecars" to be a palindrome'
  end
end
