class Array
  def brand_to_hash(store_id)
    array_of_hashes = []
    self.each do |brand_id|
      new_hash = {:brand_id => brand_id, :store_id => store_id}
      array_of_hashes.push(new_hash)
    end
    array_of_hashes
  end

  def store_to_hash(brand_id)
  array_of_hashes = []
  self.each do |store_id|
    new_hash = {:store_id => store_id, :brand_id => brand_id}
    array_of_hashes.push(new_hash)
  end
  array_of_hashes
  end
end