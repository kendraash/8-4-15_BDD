require("rspec")
require("sleep_in")

describe('String#sleep_in') do
  it("it takes the date and displays what day of the week it is") do
    expect("8/4/2015".sleep_in()).to(eq("Tuesday"))
  end
end
