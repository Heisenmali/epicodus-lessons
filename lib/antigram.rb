class String
  def antigram(second_word)
    if self.match?(/#{second_word}/) == false
      "This is an antigram"
    else
      "This isn't an antigram"
    end
  end
end
