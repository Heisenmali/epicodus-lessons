require 'sinatra'
require 'sinatra/reloader'
require './lib/parcel'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do

  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  weight = params.fetch('weight').to_i
  new_parcel = Parcel.new(length, width, weight)
  @output = new_parcel.shipping_cost?

  erb(:result)
end
