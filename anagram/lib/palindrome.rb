class String
  def palindrome
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


# Second approach to writing a palindrome method

class String
  def palindrom
    word_array = self.downcase.split("")
    cond = true
    i = 0
    while cond == true && i < word_array.length
      if word_array[i] == word_array[-i-1]
        i += 1
      else
        cond = false
      end
    end
    cond
  end
end
