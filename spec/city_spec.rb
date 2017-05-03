require 'unit_helper_spec'

describe 'City' do
  describe '.all' do
    it 'Will return an empty array for the all method' do
      expect(City.all).to eq []
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
end
