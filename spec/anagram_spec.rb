require 'rspec'
require 'anagram'


describe 'String#anagram' do
  # first spec
  it 'takes user input and downcases, stores it in an array, removes whitespace and counts the number of characters and stores that in a hash' do
    expect(('eat').anagram('tea')).to(eq(true))
  end
  it 'takes user input and downcases, stores it in an array, removes whitespace and counts the number of characters and stores that in a hash' do
    expect(('eat').anagram('hello')).to(eq(false))
  end
    it 'checks for anagrams regardless of case' do
    expect(('Eat').anagram('TeA')).to(eq(true))
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
