RSpec.describe "#even? method" do
# it "should return true if number is even"
# it "should return false if number is odd"
  describe "with even number"do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end
  # line 4 describe == line 10 context, "context" may seem more readable.
  context "with odd number"do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end
end
