# ruby code
class String
  def anagram
   
    first_w_array = self.downcase.split("").reject!{|char| char == " "}
    # second_w_array = second_word.downcase.split("").reject!{|char| char == " "}

    first_char_count = Hash.new 0
    first_w_array.each do |character|
      first_char_count[character] += 1

    
    end
    first_char_count 
  end
end
