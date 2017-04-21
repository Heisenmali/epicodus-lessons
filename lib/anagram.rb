# ruby code
class String
  def anagram
    input_array = self.downcase.split("").reject!{|char| char == " "}
  end
end
