require 'spec_helper'

describe Array do
  it 'will return an array of hashes from an array input' do
    my_brands_array = ["5", "7"].map(&:to_i) #conversion from string to int happens when stored by ActiveRecord
    my_store_id = 3
    expect(my_brands_array.brand_to_hash(my_store_id)).to eq([{:brand_id => 5, :store_id => 3}, {:brand_id => 7, :store_id => 3}])
  end

  it 'will return an array of hashes from an array input' do
    my_stores_array = ["5", "7"].map(&:to_i) #conversion from string to int happens when stored by ActiveRecord
    my_brand_id = 3
    expect(my_stores_array.store_to_hash(my_brand_id)).to eq([{:store_id => 5, :brand_id => 3}, {:store_id => 7, :brand_id => 3}])
  end
end