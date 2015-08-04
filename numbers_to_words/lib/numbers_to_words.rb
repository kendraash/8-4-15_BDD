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
      20 => "twenty"
    }

    number_array=self.to_s.split("")
    if self == 0
      "Zero"
    else
      if self <= 9
        number_names[self].capitalize!()
      elsif number_array.length()==2
        if number_array[0]=="1"
          number_names[self].capitalize!()
        else
          tens_place_value = number_names[number_array[0].to_i.*(10)]
          ones_place_value = number_names[number_array[1].to_i]
          tens_place_value.concat(" ").concat(ones_place_value).capitalize!()
        end
      end
    end
  end
end
