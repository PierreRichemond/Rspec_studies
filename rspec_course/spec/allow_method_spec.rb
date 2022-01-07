RSpec.describe 'allow method reviews' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
  end

  it 'can stub one or more method on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10) # it will return 10 regardless of the actual sum
    expect(arr.sum).to eq(10) #sum suppose to be 6 but test pass on 10

    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4]) # other method works
  end

  it 'can return multiple values in sequences' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
  end
end
