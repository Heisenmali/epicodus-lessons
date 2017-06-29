require 'sinatra'
require 'sinatra/reloader'
require('./lib/coin')
also_reload('lib/**/*.rb')

get '/' do
  erb(:index)
end

get '/result' do
  @change = params.fetch('input_string').coin_change
  erb(:result)
end
