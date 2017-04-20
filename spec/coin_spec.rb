require 'rspec'
require 'coin'

describe 'String#coin_change' do
  it 'limits the input to 99 cents' do
    expect('101'.coin_change).to(eq 'enter a smaller amount')
  end
end
