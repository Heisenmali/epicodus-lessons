require 'sinatra'
require 'sinatra/contrib'
require 'json'

get '/' do
  erb :index
end

get '/exp' do
  content_type :json
  { :first => 'hello', :last => 'world' }.to_json
end