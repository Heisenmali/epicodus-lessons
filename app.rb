require("bundler/setup")
Bundler.require(:default)
# require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  # brand_id = Brand.create(name: "Paul Smith", price: "9.50").id
  # store_id = Store.create(name: "Apple store", location: "portland").id
  # BrandStore.create(brand_id: brand_id, store_id: store_id)
  erb :index
end