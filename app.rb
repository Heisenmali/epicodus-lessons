require 'sinatra'
require 'sinatra/reloader'
require './lib/anagram'
require './lib/palindrome'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  first_word = params.fetch('word')
  second_word = params.fetch('second-word')

  if first_word.match?(/[aeiou]/) && second_word.match?(/[aeiou]/)
    anagram = first_word.anagram(second_word)
    palindrome = params.fetch('word').palindrome()
    @output = "#{first_word} is an anagram of #{second_word}"

  else
    @output = "Enter a valid input... Dude!"
  end
    erb(:result)
end
