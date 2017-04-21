require 'rspec'
require 'anagram'


describe 'String#anagram' do
  # first spec
  it 'takes user input and downcases, stores it in an array, removes whitespace and counts the number of characters and stores that in a hash' do
    expect(('eat').anagram('tea')).to(eq("eat and tea are anagrams"))
  end
  it 'takes user input and downcases, stores it in an array, removes whitespace and counts the number of characters and stores that in a hash' do
    expect(('eat').anagram('hello')).to(eq("eat and hello are not anagrams"))
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
