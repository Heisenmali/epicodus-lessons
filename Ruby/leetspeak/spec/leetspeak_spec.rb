require('rspec')
require('leetspeak')
require('queenattack')
require('clockangle')

describe("String#leetspeak") do

  it("Replaces the letter 'e' and 'E' with the number '3'.") do
    expect(("hell wrldE").leetspeak()).to(eq("h3ll wrld3"))
  end

  it("Replaces the letter 'o' and 'O' with '0'.") do
    expect(("hello wOrld").leetspeak()).to(eq("h3ll0 w0rld"))
  end

  it("Replaces every 'I' in a string with a '1'.") do
    expect(("hello world I am here").leetspeak()).to(eq("h3ll0 w0rld 1 am h3r3"))
  end

  it("Replaces every 's' with a 'z' except when the letter starts a word.") do
    expect(("Super boss hippos").leetspeak()).to(eq("Sup3r b0zz hipp0z"))
  end

  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end


end

describe('Array#queen_attack?') do

  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true if the piece is vertically aligned with the queen') do
    expect([1,1].queen_attack?([1, 4])).to(eq(true))
  end

  it('is true if the piece is horizontally aligned with the queen') do
    expect([1,1].queen_attack?([4, 1])).to(eq(true))
  end

  it('is true if the piece is diagonally aligned with the queen') do
    expect([4,4].queen_attack?([6, 2])).to(eq(true))
  end

end


describe('Fixnum#clock_angle') do
  it('will return the value of the time when called on an hour with a minutes parameter.') do
    expect(4.clock_angle(45)).to(eq("4:45"))
  end
end
