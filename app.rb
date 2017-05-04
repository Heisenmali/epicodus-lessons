require 'sinatra'
require 'sinatra/reloader'
require './lib/train'
require './lib/city'
require 'pry'
require 'pg'
also_reload('lib/**/*.rb')

extend Train
extend City

DB = PG.connect({:dbname => 'train_test'})

get '/' do
  @trains = Train.all
  @cities = City.all
  erb(:index)
end

#TRAIN ADD
get '/train/:id' do
  train_uuid = params.fetch('id')
  @train = Train.find(train_uuid)
  @train_cities = []
  city_a = Train.train_cities(train_uuid)
  city_a.each do |city|
    current_city = City.find(city['city_id'])
    @train_cities.push(current_city)
  end
  erb(:train)
end

post '/add_train' do
  name = params.fetch('train')
  Train.save(name)
  redirect '/'
end

#TRAIN EDIT
get '/train/edit/:id' do
  @train = Train.find(params.fetch('id'))
  @cities = City.all
  erb(:edit_train)
end

patch '/train/edit/:id' do
  train_id = params.fetch('id')
  name = params.fetch('name')
  Train.edit(name, train_id)
  redirect "/train/#{train_id}"
end

#add cities to train
post '/train/edit/:id' do
  train_id = params.fetch("id")
  city_ids = params.fetch("city_ids")
  Train.add_train_cities(train_id, city_ids)
  redirect "/train/#{train_id}"
end

#TRAIN DELETE
delete '/train/delete/:id' do
  train_id = params.fetch('id')
  Train.delete(train_id)
  redirect '/'
end

#-------------------------------------------------

#CITY ADD
get '/city/:id' do
  @city = City.find(params.fetch('id'))
  city_uuid = params.fetch('id')
  @city_trains = []
  train_a = City.city_trains(city_uuid)
  train_a.each do |train|
    current_train = Train.find(train['train_id'])
    @city_trains.push(current_train)
  end
  erb(:city)
end

post '/add_city' do
  name = params.fetch('city')
  City.save(name)
  redirect '/'
end

#CITY EDIT
get '/city/edit/:id' do
  @city = City.find(params.fetch('id'))
  erb(:edit_city)
end

patch '/city/edit/:id' do
  city_id = params.fetch('id')
  name = params.fetch('name')
  City.edit(name, city_id)
  redirect "/city/#{city_id}"
end

#CITY DELETE
delete '/city/delete/:id' do
  city_id = params.fetch('id')
  City.delete(city_id)
  redirect '/'
end
