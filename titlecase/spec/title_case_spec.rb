require('rspec')
require('title_case')

describe('String#title_case') do
  it('capitalize the first letter of a word') do
    expect('beowulf'.title_case()).to(eq('Beowulf'))
  end
  it('capitalizes the first letter of every word') do
    expect('it doesnt matter'.title_case()).to(eq('It Doesnt Matter'))
  end
  it('does not capitalize designated words that are after the first word') do
    expect('the land before time but not after chocolate'.title_case()).to(eq('The Land Before Time but Not After Chocolate'))
  end
  it('handles mixed case entries') do
    expect('This old beoWulf'.title_case()).to(eq("This Old Beowulf"))
  end
end
