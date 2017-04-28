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