require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the anagram path', {:type => :feature} do
  it 'it processes the user entry and returns if it is an anagram or a palindrome.' do
    visit '/'
    fill_in 'word', :with => 'ana'
    fill_in 'second-word', :with => 'ana'
    click_button 'submit'
    expect(page).to have_selector("div#output", :text =>"'Ana' is an anagram of 'ana'")
  end
  it 'it processes the user entry checks if it is valid.' do
    visit '/'
    fill_in 'word', :with => 'hd'
    fill_in 'second-word', :with => 'hd'
    click_button 'submit'
    expect(page).to have_content "Enter a valid input..."
  end
  it 'it processes the user entry and checks if it accounts for multiple word sentences' do
    visit '/'
    fill_in 'word', :with => 'hello world'
    fill_in 'second-word', :with => 'ab if'
    click_button 'submit'
    expect(page).to have_content "'Hello world' is not an anagram of 'ab if' and they are not antigrams."
  end
  it 'it processes the user entry and checks if the app detects punctuation' do
    visit '/'
    fill_in 'word', :with => 'hello world?'
    fill_in 'second-word', :with => 'ab if'
    click_button 'submit'
    expect(page).to have_content "Enter a valid input..."
  end
end
