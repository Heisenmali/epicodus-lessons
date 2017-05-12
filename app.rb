require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

#ROOT PATH

get '/' do
  # brand_id = Brand.create(name: "Paul Smith", price: "9.50").id
  # store_id = Store.create(name: "Apple store", location: "portland").id
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
  binding.pry
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