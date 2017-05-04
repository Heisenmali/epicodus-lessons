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
  @train = Train.find(params.fetch('id'))
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
  erb(:edit_train)
end

patch '/train/edit/:id' do
  train_id = params.fetch('id')
  name = params.fetch('name')
  Train.edit(name, train_id)
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
