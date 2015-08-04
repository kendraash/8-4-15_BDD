require("rspec")
require("sleep_in")

describe('String#sleep_in') do
  it("it takes the date and displays what day of the week it is") do
    expect("8/4/2015".sleep_in()).to(eq("Tuesday"))
  end
  it("it takes the date and determines if it is the weekend and says you can sleep in") do
    expect("8/1/2015".sleep_in()).to(eq("Today is Saturday you can sleep in"))
  end
end
