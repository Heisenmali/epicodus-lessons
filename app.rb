require 'sinatra'
require 'sinatra/reloader'
require './lib/dictionary'
require 'pry'

also_reload('lib/**/*.rb')

get '/' do
  erb(:index)
end

get '/new-word'do
  erb(:new_word)
end