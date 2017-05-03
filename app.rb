require 'sinatra'
require 'sinatra/reloader'
require './lib/train'
require './lib/city'
require 'pry'
require 'pg'
also_reload('lib/**/*.rb')

extend Train
extend City

get '/' do
  erb(:index)
end

#CITY ADD
get '/add_city' do
  erb(:add_city)
end

post '/add_city' do
  redirect '/'
end

#CITY EDIT
get '/edit_city' do
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

#-------------------------------------------------

#TRAIN ADD
get '/add_train' do
  erb(:add_train)
end

post '/add_train' do
  redirect '/'
end

#TRAIN EDIT
get '/edit_train' do
  erb(:edit_train)
end

patch '/edit_train' do
  redirect '/'
end

#TRAIN DELETE
get '/delete_train' do
  erb(:delete_train)
end

delete '/delete_train' do
  redirect '/'
end
