require('rspec')
require('replace')

describe('String#replace') do
  it('takes a word and changes a letter') do
    expect('hello'.replace("o", "*")).to(eq('hell*'))
  end
  it('takes a string and changes a word') do
    expect('hello world'.replace("world", "Nikki")).to(eq('hello Nikki'))
  end
  it('takes a string and changes a word regardless of capitalization') do
    expect('hEllo WORLD'.replace("world", "Nikki")).to(eq('hello Nikki'))
  end
end
