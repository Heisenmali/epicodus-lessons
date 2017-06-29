require 'sinatra'
require 'sinatra/contrib'
require 'json'

require 'sinatra/cross_origin'

configure do
  enable :cross_origin
end

before do
   content_type :json
   headers 'Access-Control-Allow-Origin' => '*',
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']
end

set :protection, false

get '/' do
  erb :index
end

get '/exp' do
  content_type :json
  { :first => 'well', :last => 'world' }.to_json
end
