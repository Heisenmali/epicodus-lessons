require 'sinatra'
require 'sinatra/reloader'
require './lib/anagram'
require './lib/palindrome'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  second_word = params.fetch('second-word')
  @anagram = params.fetch('word').anagram(second_word)

  @palindrome = params.fetch('word').palindrome()
  erb(:result)
end
