require 'spec_helper'

#ASSOCIATION TESTING

describe Store do
  it { should have_many :brands }
end

describe Brand do
  it { should have_many :stores }
end

describe BrandStore do
  it { should belong_to :store }
  it { should belong_to :brand }
end

#DB TESTING

describe Store do
  it { should have_db_column :id }
  it { should have_db_column :name }
  it { should have_db_column :location }
end

describe Brand do
  it { should have_db_column :id }
  it { should have_db_column :name }
  it { should have_db_column :price }
end

describe BrandStore do
  it { should have_db_column :store_id }
  it { should have_db_column :brand_id }
end

#CALLBACKS

describe Store do
  describe '.capitalize_name' do
    it 'will capitalize name and location before saving' do
      store_id = Store.create(name: "apple", location: "portland").id
      expect(Store.find(store_id).name).to eq("Apple")
      expect(Store.find(store_id).location).to eq("Portland")
    end
  end
end


describe Brand do
  describe '.capitalize_name' do
    it 'will capitalize name and location before saving' do
      brand_id = Brand.create(name: "apogee", price: "59.00").id
      expect(Brand.find(brand_id).name).to eq("Apogee")
    end
  end

  describe '.price_adjust' do
    it 'will adjust price to have 2 decimals before saving' do
      brand_id = Brand.create(name: "apogee", price: "59").id
      expect(Brand.find(brand_id).price).to eq("59.00")
    end
  end
end