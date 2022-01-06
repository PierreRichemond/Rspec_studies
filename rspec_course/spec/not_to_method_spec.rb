RSpec.describe ' not to method' do
  it "checks that the 2 values do no match" do
    expect(5).not_to eq(6)
    expect("Hello").not_to eq("hello")
    expect([5]).not_to eq(5)
  end
end
