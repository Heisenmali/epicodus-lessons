require 'rspec'
require 'anagram'


describe 'String#anagram' do
  # first spec
  it 'takes user input and downcases, stores it in an array and removes whitespace' do
    expect('HELlo WorlD how are you'.anagram).to(eq ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d", "h", "o", "w", "a", "r", "e", "y", "o", "u"])
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
