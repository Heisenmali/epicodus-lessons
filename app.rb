require 'sinatra'
require 'sinatra/reloader'
require './lib/dictionary'
require 'pry'

also_reload('lib/**/*.rb')

get '/' do
  @dictionary = Word.all
  erb(:index)
end

get '/new-word'do
  erb(:new_word)
end

post '/new-word/add' do
  word = params.fetch('word')
  definition = params.fetch('definition')
  new_word = Word.new(word, definition)
  new_word.save
  erb(:success)
end

get '/:word' do
  @word = Word.search(params.fetch('word'))
  erb(:word)
end

post '/:word/new-definition' do
  searched_word = Word.search(params.fetch('word'))
  searched_word.new_definition(params.fetch('added-definition'))  
  #Why is searchd_word an array??? Only before word.erb file was modified with imbedded ruby
  erb(:success)
end