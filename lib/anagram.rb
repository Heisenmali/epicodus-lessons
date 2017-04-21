# ruby code
class String
  def anagram(second_word)
   
    first_w_array = self.downcase.split("").reject!{|char| char == " "}
    second_w_array = second_word.downcase.split("").reject!{|char| char == " "}

    first_char_count = Hash.new 0
    first_w_array.each do |char|
      first_char_count[char] += 1
    end 
    
    second_char_count = Hash.new 0
    second_w_array.each do |char|
      second_char_count[char] += 1

    end
    second_char_count 
  end
end
