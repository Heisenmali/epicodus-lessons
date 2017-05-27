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
  end

  describe '.add_train_cities' do
    it "will add cities to the join table with a specific train id" do
      city_uuid_a = []
      time_a = []
      city_name = "Portland"
      city_uuid = City.save(city_name)
      city_time = "12:00 PM"
      city_name2 = "Seattle"
      city_time2 = "2:00 PM"
      city_uuid2 = City.save(city_name2)
      time_a.push(city_time, city_time2)
      city_uuid_a.push(city_uuid, city_uuid2)
      name = "test train"
      train_uuid = Train.save(name)
      Train.add_train_cities(train_uuid, city_uuid_a, time_a)
      expect(Train.train_cities(train_uuid)[0]["city_id"]).to eq city_uuid
      expect(Train.train_cities(train_uuid)[1]["city_id"]).to eq city_uuid2
      expect(Train.train_cities(train_uuid)[0]["stop_time"]).to eq "12:00:00"
      expect(Train.train_cities(train_uuid)[1]["stop_time"]).to eq "14:00:00"
    end
  end
end
