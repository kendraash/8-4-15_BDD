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
      word = "Zero"
    elsif self <= 9
      word = number_names[self]
    elsif number_array.length()>=2
      tens_place_value = number_names[number_array[1].to_i.*(10)]
      ones_place_value = number_names[number_array[0].to_i]
      if number_array.length()>=3
        hundreds_place_value = number_names[number_array[2].to_i]
        if number_array.length==4
          thousands_place_value=number_names[number_array[3].to_i]
          if number_array[1]=="0" && number_array[2]=="0"
            if number_array[0]=="0"
              word = thousands_place_value.concat(" thousand")
            else
              word = thousands_place_value.concat(" thousand ").concat(ones_place_value)
            end
          elsif number_array[2]=="0" && number_array[1]=="1"
            word = thousands_place_value.concat(" thousand ").concat(number_names[(self.-(number_array[3].to_i.*(1000)))])
          end
        elsif number_array[1]=="1"
          word = hundreds_place_value.concat(" hundred ").concat(number_names[(self.-(number_array[2].to_i.*(100)))])
        elsif number_array[1]=="0" && number_array[0]!="0"
          word = hundreds_place_value.concat(" hundred ").concat(ones_place_value)
        elsif number_array[0]=="0"
          word = hundreds_place_value.concat(" hundred")
        else
          word = hundreds_place_value.concat(" hundred ").concat(tens_place_value).concat(" ").concat(ones_place_value)
        end
      elsif number_array[1]=="1"
        word = number_names[self]
      else
        word = tens_place_value.concat(" ").concat(ones_place_value)
      end
    end
    word.capitalize!()
  end
end
