require 'helper_spec'

describe 'Train' do
  describe '.all' do
    it 'Will return an empty array for the all method' do
      expect(Train.all).to(eq([]))
    end
  end

  describe '.save' do
    it 'It will save a train to the trains table' do
      train_uuid = SecureRandom.uuid
      name = "test train"
      Train.save(name, train_uuid)
      expect(Train.all[0]["id"]).to(eq(train_uuid))
    end
  end
end
