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
  redirect "/train/#{@train['id']}"
end

#TRAIN DELETE
get '/train/delete/:id' do
  erb(:delete_train)
end

delete '/delete_train' do
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

patch '/edit_city' do
  redirect '/'
end

#CITY DELETE
get '/delete_city' do
  erb(:delete_city)
end

delete '/delete_city' do
  redirect '/'
end
