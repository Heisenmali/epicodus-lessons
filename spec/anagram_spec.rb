require 'rspec'
require 'anagram'


describe 'String#anagram' do
  # first spec
  it 'takes user input and downcases, stores it in an array, removes whitespace and counts the number of characters and stores that in a hash' do
    expect('HELlo WorlD how are you'.anagram("hello world how are you")).to(eq({'h'=>2, 'e'=>2, 'l'=>3, 'o'=>4, 'w'=>2, 'r'=>2, 'd'=>1, 'a'=>1, 'y'=>1, 'u'=>1}))
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
