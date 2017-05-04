require 'unit_helper_spec'

describe 'Train' do
  describe '.all' do
    it 'Will return an empty array for the all method' do
      expect(Train.all).to eq []
    end
  end

  describe '.save' do
    it 'It will save a train to the trains table' do
      name = "test train"
      train_uuid = Train.save(name)
      expect(Train.all[0]["id"]).to eq train_uuid
    end
  end
  describe '.find' do
    it 'returns a train based on id' do
      name = "test train"
      train_uuid = Train.save(name)
      expect(Train.find(train_uuid)["name"]).to eq "test train"
    end
  end

  describe '.edit' do
    it "will allow a user to edit a train" do
      name = "test train"
      train_uuid = Train.save(name)
      Train.edit("Burf", train_uuid)
      expect(Train.all[0]["name"]).to eq "Burf"
    end
  end

  describe '.delete' do
    it "will allow a user to delete a train" do
      name = "test train"
      train_uuid = Train.save(name)
      Train.delete(train_uuid)
      expect(Train.all).to eq []
    end
  end

  describe '.train_cities' do
    it "will list all of the cities of a specific train" do
      name = "test train"
      train_uuid = Train.save(name)
      expect(Train.train_cities(train_uuid)).to eq []
    end

  # describe '.add_train_cities' do
  #   it "will add cities to the join table with a specific train id" do
  #     name = "test train"
  #     train_uuid = Train.save(name)
  #     expect(Train.train_cities)
  #   end
  end
end
