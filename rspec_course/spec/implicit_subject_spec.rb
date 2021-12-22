RSpec.describe Hash do
  # let(:my_hash) { Hash.new }

    it "should start off empty" do
      expect(subject.length).to eq(0)
      subject[:key] = "value"
      expect(subject.length).to eq(1)
    end

    it "be isolated from other examples" do
      expect(subject.length).to eq(0)
    end
end
