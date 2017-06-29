class String
  def numbers_to_words
    first_digit = {
      "0" => "",
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine"
    }

    teens = {
      "0"  => "ten",
      "1" => "eleven",
      "2" => "twelve",
      "3" => "thirteen",
      "4" => "fourteen",
      "5" => "fifteen",
      "6" => "sixteen",
      "7" => "seventeen",
      "8" => "eighteen",
      "9" => "nineteen"
    }

    second_digit = {
      "0"  => "",
      "2"  => "twenty",
      "3"  => "thirty",
      "4"  => "forty",
      "5"  => "fifty",
      "6"  => "sixty",
      "7"  => "seventy",
      "8"  => "eighty",
      "9"  => "ninety"
    }

    input_array = self.reverse.scan(/.{1,3}/)
    number_word = []

    input_array.each_with_index do |number_group, group_index|

      char_trio = number_group.split("")
      print char_trio
      number_place = ""

      if group_index == 0
        number_place = ""
      elsif group_index == 1
        number_place = "thousand"
      elsif group_index == 2
        number_place = "million"
      elsif group_index == 3
        number_place = "billion"
      elsif group_index == 7
        number_place = "trillion"
      end

      number_word.unshift(number_place)

      i = 0

      char_trio.each do |number|
        if i == 0
          if char_trio.at(1) == "1"
            number_word.unshift("#{teens.fetch(number)}")
            char_trio.pop(1)
            i = 1
          else
            number_word.unshift("#{first_digit.fetch(number)}")
          end
        elsif i == 2
          number_word.unshift("#{first_digit.fetch(number)} hundred")
        elsif i == 1
          number_word.unshift("#{second_digit.fetch(number)}")
        end
        i += 1
      end
    end
    number_word.reject!(&:empty?).join(" ")
  end
end









    # input_array.each_with_index do |number, index|
    #   if index.eql?(input_array.length - 1)
    #     number_word << first_digit.fetch(number)
    #   elsif index.eql?(input_array.length - 2)
    #     if input_array.at(input_array.length - 2).eql?("1")
    #       if input_array.at(input_array.length - 1).eql?("0")
    #         number_word << second_digit.fetch(input_array.at(-1))
    #         break
    #       else
    #         number_word << tens.fetch(input_array.at(-1))
    #         break
    #       end
    #     else
    #       number_word << "#{second_digit.fetch(number)} "
    #     end
    #   elsif index.eql?(input_array.length - 3)
    #     number_word << "#{first_digit.fetch(number)} hundred "
    #   elsif index.eql?(input_array.length - 4)
    #     number_word << "#{first_digit.fetch(number)} thousand "
    #   elsif index.eql?(input_array.length - 5)
    #     if input_array.at(input_array.length - 5).eql?("1")
    #       if input_array.at(input_array.length - 4).eql?("0")
    #         number_word << second_digit.fetch(input_array.at(-1))
    #       else
    #         number_word << tens.fetch(input_array.at(input_array.length - 4))
    #       end
    #     end
    #   end
    # end
    # number_word
