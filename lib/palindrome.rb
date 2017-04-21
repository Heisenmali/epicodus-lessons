class String
  define_method(:palindrome) do
    reverse_array = []
    word_array = self.split("")

    word_array.length.times() do
      reverse_array.push(word_array.pop())
    end
    reverse_string = reverse_array.join()

    if reverse_string.downcase == self.downcase
      return true
    else
      return false
    end
  end
end
