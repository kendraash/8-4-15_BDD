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
      # Define Variables
      tens = number_names[number_array[1].to_i.*(10)]
      ones = number_names[number_array[0].to_i]
      if number_array[1] == "1"
        teens = number_names[number_array[1].concat(number_array[0]).to_i]
      end
      hundreds = number_names[number_array[2].to_i]
      thousands = number_names[number_array[3].to_i]

      # Determine values of 2 digits
      if teens.nil?.!()
        word_to_tens = teens
      elsif number_array[0]=="0"
        word_to_tens = tens
      else
        word_to_tens = tens.concat(" ").concat(ones)
      end
      if number_array.length==2
        word = word_to_tens
      end

      # Determine values of 3 digits
      if number_array.length>=3
        if number_array[0]=="0" && number_array[1]=="0"
          word = hundreds.concat(" hundred")
        else
          word_to_hundreds=hundreds.concat(" hundred ").concat(word_to_tens)
          if number_array.length==3
            word = word_to_hundreds
          end
        end
      end
    end
    word.capitalize!()
  end
end
