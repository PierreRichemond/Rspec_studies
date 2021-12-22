
RSpec.describe Array do
  it 'should be empty' do
    expect(subject.length).to eq(0)
    subject.push('docstring')
    expect(subject.length).to eq(1)
  end
end
