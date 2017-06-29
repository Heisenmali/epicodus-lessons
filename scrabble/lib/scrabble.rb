class String
  def split_array
    self.upcase.split("")
  end


  define_method(:scrabble) do

    input_array = self.split_array
    total = 0
    letters = {
      /[AEIOULNRST]/ => 1,
      /[DG]/ => 2,
      /[BCMP]/ => 3,
      /[FHVWY]/ => 4,
      /[K]/ => 5,
      /[JX]/ => 8,
      /[QZ]/ => 10,
    }

    letters.each do |key, value|
      input_array.each do |letter|
        if key === letter
          total += value
        end
      end
    end
    total
  end
end
