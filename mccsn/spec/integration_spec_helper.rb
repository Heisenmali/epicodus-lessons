module PreLoadDB
  def self.preload
    brand_id = Brand.create(name: "Paul", price: "9.50").id
    store_id = Store.create(name: "Apple", location: "portland").id
  end
end

RSpec.configure do |config|
  config.before(:each) do
    brands = Brand.all
    brands.each { |brand| brand.destroy}
    stores = Store.all
    stores.each { |stores| stores.destroy}
    brand_stores = BrandStore.all
    brand_stores.each { |brand_stores| brand_stores.destroy}
  end
end

RSpec.configure do |config|
  config.after(:each) do
    brands = Brand.all
    brands.each { |brand| brand.destroy}
    stores = Store.all
    stores.each { |stores| stores.destroy}
    brand_stores = BrandStore.all
    brand_stores.each { |brand_stores| brand_stores.destroy}
  end
end