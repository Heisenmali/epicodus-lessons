class String
  define_method(:title_case) do
    not_capitalized = ["to","the","of","from","and","but","or","by","on"]
    self.downcase!()
    word_array = self.split()

    word_array.each() do |word|
      if word_array.at(0) == word || !not_capitalized.include?(word)
        word.capitalize!()
      end
    end
    word_array.join(" ")
  end
end
