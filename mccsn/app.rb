require("bundler/setup")
Bundler.require(:default)


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

#ROOT PATH

get '/' do
  Brand.create(name: "Paul Smith", price: "9.50")
  Brand.create(name: "Stan Smith", price: "100")
  Brand.create(name: "Nike", price: "56")
  Brand.create(name: "Vans", price: "87")
  Brand.create(name: "Puma", price: "302")
  Brand.create(name: "Church's'", price: "53")
  Brand.create(name: "Jordan", price: "23")
  Brand.create(name: "Adidas", price: "42")
  Brand.create(name: "Converse", price: "14")
  Brand.create(name: "Toms", price: "4")
  Store.create(name: "A Pied", location: "San-Francisco")
  Store.create(name: "Feet First", location: "New-York")
  Store.create(name: "Shoe a Holic", location: "London")
  Store.create(name: "The Walking Company", location: "Paris")
  Store.create(name: "City Soles", location: "Tokyo")
  Store.create(name: "Alternatives Shoes", location: "Moscow")
  Store.create(name: "Runners High", location: "Copenhagen")
  Store.create(name: "Track Shack", location: "Stockholm")
  Store.create(name: "Foot Traffic", location: "Berlin")
  Store.create(name: "Solestruck", location: "Venice")
  erb :index
end


#STORE PATH

get '/stores' do
  @stores = Store.all
  erb :stores
end

get '/stores/new' do
  erb :new_store
end

post '/stores/new' do
  Store.create(name: params['name'], location: params['location'])
  redirect '/stores'
end

get '/store/:id' do
  @store = Store.find(params['id'])
  @brands = Brand.all
  erb :store
end

#Edit name and location

patch '/store/:id/edit' do
  new_name = params['new-name']
  new_location = params['new-location']
  store = Store.find(params['id'])
  store.update(name: new_name, location: new_location)
  redirect back
end

#Edit associated brands

post '/store/:id/edit' do
  brand_ids = params['brand_ids']
  store = Store.find(params['id'])
  array_of_hashes = brand_ids.brand_to_hash(store.id)
  BrandStore.create(array_of_hashes)
  redirect back
end


delete '/store/:id/delete' do
  store = Store.find(params['id'])
  store.destroy
  redirect '/stores'
end

#BRAND PATH

get '/brands' do
  @brands = Brand.all
  erb :brands
end

get '/brands/new' do
  erb :new_brand
end

post '/brands/new' do
  Brand.create(name: params['name'], price: params['price'])
  redirect '/brands'
end

get '/brand/:id' do
  @brand = Brand.find(params['id'])
  @stores = Store.all
  erb :brand
end

patch '/brand/:id/edit' do
  new_name = params['new-name']
  new_price = params['new-price']
  brand = Brand.find(params['id'])
  brand.update(name: new_name, price: new_price)
  redirect back
end

post '/brand/:id/edit' do
  store_ids = params['store_ids']
  brand = Brand.find(params['id'])
  array_of_hashes = store_ids.store_to_hash(brand.id)
  BrandStore.create(array_of_hashes)
  redirect back
end

delete '/brand/:id/delete' do
  brand = Brand.find(params['id'])
  brand.destroy
  redirect '/brands'
end