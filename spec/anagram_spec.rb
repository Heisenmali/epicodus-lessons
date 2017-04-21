require 'rspec'
require 'anagram'


describe 'String#anagram' do
  # first spec
  it 'takes user input and downcases, and stores it in a variable' do
    expect('HELlo WorlD'.anagram).to(eq 'hello world')
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
