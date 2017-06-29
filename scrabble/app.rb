require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble.rb')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/page') do
  @score = params.fetch('word').scrabble()
  erb(:score)
end
