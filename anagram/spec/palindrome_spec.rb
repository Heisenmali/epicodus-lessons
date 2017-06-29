require('rspec')
require('palindrome')

describe('String#palindrome') do
  it('Takes the input and tests if it is a palindrome') do
    expect('no'.palindrome()).to(eq(false))
  end
  it('Takes the input and tests if it is a palindrome') do
    expect('Ana'.palindrome()).to(eq(true))
  end

# Palindrome variant method palindrom, notice the e...

  it('Takes the input and tests if it is a palindrome') do
    expect('no'.palindrom()).to(eq(false))
  end
  it('Takes the input and tests if it is a palindrome') do
    expect('Ana'.palindrom()).to(eq(true))
  end
end
