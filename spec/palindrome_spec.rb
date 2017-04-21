require('rspec')
require('palindrome')

describe('String#palindrome') do
  it('Takes the input and tests if it is a palindrome') do
    expect('no'.palindrome()).to(eq('no is not a palindrome!'))
  end
  it('Takes the input and tests if it is a palindrome') do
    expect('Ana'.palindrome()).to(eq('anA is a palindrome!'))
  end
end
