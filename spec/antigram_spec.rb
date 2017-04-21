require 'rspec'
require 'antigram'

describe 'String#antigram' do
  # first spec
  it 'checks if inputs are antigrams' do
    expect(('hi').antigram('no')).to(eq("This is an antigram"))
  end
end
