class Fixnum
  define_method(:numbers_to_words) do
    if self == 0
      "Zero"
    elsif self == 1
      "One"
    elsif self ==2
      "Two"
    elsif self == 3
      "Three"
    elsif self == 4
      "Four"
    elsif self == 5
      "Five"
    elsif self == 6
      "Six"
    elsif self == 7
      "Seven"
    elsif self == 8
      "Eight"
    elsif self == 9
      "Nine"
    end
  end
end
