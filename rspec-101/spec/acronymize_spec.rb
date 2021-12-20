# spec/acronymize_spec.rb
require_relative "../acronymize" # Test uses the library! (yet to be coded)

describe "#acronymize" do
  it "returns FAQ for 'Frequently Asked Questions'" do
    actual = acronymize("Frequently Asked Questions") # Calling your code
    expected = "FAQ" # What we expect

    # Now you can use RSpec to compare both:
    expect(actual).to eq(expected)
  end
end
