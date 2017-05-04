require 'unit_helper_spec'

describe 'City' do
  describe '.all' do
    it 'Will return an empty array for the all method' do
      expect(City.all).to eq []
    end
  end

  describe '.timetable' do
    it 'Will return an array of hashes each containing name, train and time' do
      name = "test train"
      train_uuid = Train.save(name)
      name2 = "test train2"
      city_time = "12:00 PM"
      train_uuid2 = Train.save(name2)
      city_name = "Portland"
      city_time2 = "2:00 PM"
      city_uuid = City.save(city_name)
      city_uuid_a = []
      time_a = []
      city_uuid_a.push(city_uuid)
      time_a.push(city_time, city_time2)
      Train.add_train_cities(train_uuid, city_uuid_a, time_a)
      Train.add_train_cities(train_uuid2, city_uuid_a, time_a)


      expect(City.timetable).to eq({"train_id" => train_uuid, "stop_time" => "12:00:00", "city_id" => city_uuid})
    end
  end

  describe '.save' do
    it 'It will save a city to the cities table' do
      name = "test city"
      city_uuid = City.save(name)
      expect(City.all[0]["id"]).to eq city_uuid
    end
  end
  describe '.find' do
    it 'returns a city based on id' do
      name = "test city"
      city_uuid = City.save(name)
      expect(City.find(city_uuid)["name"]).to eq "test city"
    end
  end

  describe '.edit' do
    it "will allow a user to edit a city" do
      name = "test city"
      city_uuid = City.save(name)
      City.edit("Portland", city_uuid)
      expect(City.all[0]["name"]).to eq "Portland"
    end
  end

  describe '.delete' do
    it "will allow a user to delete a city" do
      name = "test city"
      city_uuid = City.save(name)
      City.delete(city_uuid)
      expect(City.all).to eq []
    end
  end

  describe '.city_trains' do
    it "will list all of the trains of a specific city" do
      name = "test train"
      train_uuid = Train.save(name)
      name2 = "test train2"
      city_time = "12:00 PM"
      train_uuid2 = Train.save(name2)
      city_name = "Portland"
      city_time2 = "2:00 PM"
      city_uuid = City.save(city_name)
      city_uuid_a = []
      time_a = []
      city_uuid_a.push(city_uuid)
      time_a.push(city_time, city_time2)
      Train.add_train_cities(train_uuid, city_uuid_a, time_a)
      Train.add_train_cities(train_uuid2, city_uuid_a, time_a)
      expect(City.city_trains(city_uuid)[0]["train_id"]).to eq train_uuid
      expect(City.city_trains(city_uuid)[1]["train_id"]).to eq train_uuid2
    end
  end
end
