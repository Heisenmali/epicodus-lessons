require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the anagram path', {:type => :feature} do
  it 'it processes the user entry and returns if it is an anagram or a palindrome' do
    visit '/'
    fill_in 'word', :with => 'ana'
    fill_in 'second-word', :with => 'ana'
    click_button 'submit'
    expect(page).to have_content "this is the result ana and ana are anagrams ana is a palindrome!"
  end
  it 'it processes the user entry and returns if it is an anagram or a palindrome' do
    visit '/'
    fill_in 'word', :with => 'hd'
    fill_in 'second-word', :with => 'hd'
    click_button 'submit'
    expect(page).to have_content "this is the result Enter a valid input... Dude!"
  end
end
