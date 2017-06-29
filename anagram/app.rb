require 'sinatra'
require 'sinatra/reloader'
require './lib/anagram'
require './lib/palindrome'
require './lib/antigram'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  first_word = params.fetch('word')
  second_word = params.fetch('second-word')

  if first_word.match?(/[^\w\s]/) || second_word.match?(/[^\w\s]/)
    @output = "Enter a valid input..."

  elsif first_word.match?(/[aeiouy]/) && second_word.match?(/[aeiouy]/)
    if first_word.anagram(second_word) == true

      if first_word.palindrome == true
        @output = "'#{first_word.capitalize}' is an anagram of '#{second_word}' and is a palindrome."
     else
        @output = "'#{first_word.capitalize}' is an anagram of '#{second_word}' and is not a palindrome."
      end

    elsif first_word.antigram(second_word) == true
      @output = "'#{first_word.capitalize}' is not an anagram of '#{second_word}' and they are antigrams."
    elsif first_word.antigram(second_word) == false
      @output = "'#{first_word.capitalize}' is not an anagram of '#{second_word}' and they are not antigrams."
    else

    end

  else
    @output = "Enter a valid input..."
  end
    erb(:result)
end
