class Fixnum
  define_method(:numbers_to_words) do
    number_names = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }

    number_array=self.to_s.split("").reverse!
    if self == 0
      "Zero"
    elsif self <= 9
      number_names[self].capitalize!()
    elsif number_array.length()==2
      if number_array[1]=="1"
        number_names[self].capitalize!()
      else
        tens_place_value = number_names[number_array[1].to_i.*(10)]
        ones_place_value = number_names[number_array[0].to_i]
        tens_place_value.concat(" ").concat(ones_place_value).capitalize!()
      end
    elsif number_array.length()==3
      hundreds_place_value = number_names[number_array[2].to_i]
      if number_array[1]=="1"
        hundreds_place_value.concat(" hundred ").concat(number_names[(self.-(number_array[2].to_i.*(100)))]).capitalize!()
      elsif number_array[1]=="0"
        ones_place_value = number_names[number_array[0].to_i]
        hundreds_place_value.concat(" hundred ").concat(ones_place_value).capitalize!()
      else
        tens_place_value = number_names[number_array[1].to_i.*(10)]
        ones_place_value = number_names[number_array[0].to_i]
        hundreds_place_value.concat(" hundred ").concat(tens_place_value).concat(" ").concat(ones_place_value).capitalize!()
      end
    end
  end
end
