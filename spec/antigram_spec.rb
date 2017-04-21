require 'rspec'
require 'antigram'

describe 'String#antigram' do
  # first spec
  it 'checks if inputs are antigrams' do
    expect(('hi').antigram('no')).to(eq(true))
  end
  it 'checks if inputs are not antigrams' do
    expect(('hi').antigram('ih')).to(eq(false))
  end
end
