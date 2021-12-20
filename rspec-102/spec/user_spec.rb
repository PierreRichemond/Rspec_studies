# spec/user_spec.rb
require_relative "../user"

describe User do # the additional `desribe` layer
  describe "#full_name" do
    it "returns 'John Lennon'" do
      user = User.new("john", "lennon")

      actual = user.full_name
      expected = "John Lennon"

      expect(actual).to eq(expected)
    end
  end
end
