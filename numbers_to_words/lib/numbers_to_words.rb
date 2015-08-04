class Fixnum
  define_method(:numbers_to_words) do
    number_names = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19=>"nineteen"}
    if self == 0
      "Zero"
    else
      number_names[self].capitalize!()
    end
  end
end
