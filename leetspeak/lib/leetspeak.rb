class String
  define_method(:leetspeak) do
    input_array = self.split("")
    output_array = []
    i = 0
    input_array.each do |letter|
      if letter == "e" || letter == "E"
        letter = "3"
      elsif letter == "o" || letter == "O"
        letter = "0"
      elsif letter == "I"
        letter = "1"
      elsif letter == "S" || letter == "s"
        if i == 0
          letter
        elsif input_array[i-1] == " "
          letter
        else
          letter = "z"
        end
      end
      output_array.push(letter)
      i += 1
    end
    output_string = output_array.join
  end
end

# class String
#   define_method(:leetspeak) do
#     input_array = self.split("")
#     output_array = []
#     input_array.each_with_index do |letter, index|
#       if letter == "e" || letter == "E"
#         letter = "3"
#       elsif letter == "o" || letter == "O"
#         letter = "0"
#       elsif letter == "I"
#         letter = "1"
#       elsif letter == "S" || letter == "s"
#         if index == 0
#           letter
#         elsif input_array[index-1] == " "
#           letter
#         else
#           letter = "z"
#         end
#       end
#       output_array.push(letter)
#     end
#     output_string = output_array.join
#   end
# end
