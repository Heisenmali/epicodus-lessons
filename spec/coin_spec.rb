require 'rspec'
require 'coin'

describe 'String#coin_change' do
  it 'limits the input to 99 cents' do
    expect('1.01'.coin_change).to(eq 'enter a smaller amount')
  end
  it 'returns the maximum amount of quarters' do
    expect('.67'.coin_change).to(eq 'Your change is 2 quarter(s), 1 dime(s), 1 nickel(s) and 2 pennie(s).')
  end
  it 'returns dime change' do
    expect('.20'.coin_change).to(eq 'Your change is 0 quarter(s), 2 dime(s), 0 nickel(s) and 0 pennie(s).')
  end
  it 'returns dime change' do
    expect('0.28'.coin_change).to(eq 'Your change is 1 quarter(s), 0 dime(s), 0 nickel(s) and 3 pennie(s).')
  end
  it 'returns dime change' do
    expect('0.99'.coin_change).to(eq 'Your change is 3 quarter(s), 2 dime(s), 0 nickel(s) and 4 pennie(s).')
  end
  it 'returns change' do
    expect('0.85'.coin_change).to(eq 'Your change is 3 quarter(s), 1 dime(s), 0 nickel(s) and 0 pennie(s).')
  end
end
