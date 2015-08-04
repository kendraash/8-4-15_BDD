require("rspec")
require("numbers_to_words")

describe("Fixnum#numbers_to_words") do
  it("returns a single digit number as a word description string") do
    expect(4.numbers_to_words).to(eq("Four"))
  end

  it("returns a double digit number in the teens as a word description string")do
    expect(15.numbers_to_words).to(eq("Fifteen"))
  end

  it("returns a double digit number that is in the twenties")do
    expect(25.numbers_to_words).to(eq("Twenty five"))
  end

  it("returns a double digit number up to 99") do
    expect(79.numbers_to_words).to(eq("Seventy nine"))
  end

  it("returns a triple digit number as a word description string") do
    expect(117.numbers_to_words).to(eq("One hundred seventeen"))
  end
end
