class String
  def antigram(second_word)
    if !self.match?(/[#{second_word}]/)
      return true
    else
      return false
    end
  end
end
