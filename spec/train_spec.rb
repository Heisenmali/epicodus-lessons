require 'helper_spec'

describe 'Train' do
  describe '.all' do
    it 'Will return an empty array for the all method' do
      expect(Train.all).to(eq([]))
    end
  end
end
