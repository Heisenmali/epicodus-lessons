require 'rspec'
require 'parcel'


describe(Parcel) do

  describe("#volume?")
  it('checks length and width to determine volume') do
    test_parcel = Parcel.new(3, 5, 10)
    expect(test_parcel.volume?).to(eq(15))
  end

  describe("#cost?")
  it('establishes shipping cost based on weight and dimensions') do
    test_parcel = Parcel.new(2, 4, 6)
    expect(test_parcel.shipping_cost?).to(eq(12))
  end
end
