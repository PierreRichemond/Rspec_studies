RSpec.describe 'before and after hooks' do
  before(:context) do
    puts "Before context"
  end

  after(:context) do
    puts "After context"
  end

  before(:example) do
    puts "Before exemple"
  end

  after(:example) do
    puts "After exemple"
  end

  it 'just a random exemple' do
    expect(5 * 4).to eq(20)
  end

   it 'just a random exemple' do
    expect(5 - 4).to eq(1)
  end
end
