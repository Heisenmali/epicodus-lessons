require('rspec')
require('scrabble')

describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a single alphabet of letter") do
    expect("z".scrabble()).to(eq(10))
  end
  it("returns a scrabble score for all the letters in a string") do
    expect("a word".scrabble()).to(eq(9))
  end
end
