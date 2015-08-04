require("rspec")
require("numbers_to_words")

describe("Fixnum#numbers_to_words") do
  it("returns a single digit number as a word description string") do
    expect(4.numbers_to_words).to(eq("Four"))
  end
end
