# ruby code
class String
  def anagram(second_word)
    first_word_array = self.downcase.split("")
    first_word_array.reject!{|char| char == " "}

    second_word_array = second_word.downcase.split("")
    second_word_array.reject!{|char| char == " "}

    first_word_count = Hash.new 0
    second_word_count = Hash.new 0

    first_word_array.each do |word|
    first_word_count[word] += 1
    end

    second_word_array.each do |word|
    second_word_count[word] += 1
    end

    if first_word_count == second_word_count
      return true
    else
      return false
    end
  end
end
