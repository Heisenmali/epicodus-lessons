require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

#ROOT PATH

get '/' do
  brand_id = Brand.create(name: "Paul Smith", price: "9.50").id
  store_id = Store.create(name: "Apple store", location: "portland").id
  BrandStore.create(brand_id: brand_id, store_id: store_id)
  erb :index
end

#STORE PATH

get '/stores' do
  @stores = Store.all
  erb :stores
end

get '/store/:id' do
  @store = Store.find(params['id'])
  erb :store
end

patch '/store/:id/edit' do
  new_name = params['new-name']
  new_location = params['new-location']
  store = Store.find(params['id'])
  store.update(name: new_name, location: new_location)
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

get '/brand/:id' do
  @brand = Brand.find(params['id'])
  erb :brand
end

post '/brand/:id/edit' do
  new_name = params['new-name']
  new_price = params['new-price']
  brand = Brand.find(params['id'])
  brand.update(name: new_name, price: new_price)
  redirect back
end

delete '/brand/:id/delete' do
  brand = Brand.find(params['id'])
  brand.destroy
  redirect '/brands'
end