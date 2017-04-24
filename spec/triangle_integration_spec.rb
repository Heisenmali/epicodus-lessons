require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the triangle_type path', {:type => :feature} do
  it 'it processes the user entry and returns what type of triangle the user inputted' do
    visit '/'
    fill_in 'side1', :with => '2'
    fill_in 'side2', :with => '2'
    fill_in 'side3', :with => '2'
    click_button 'submit'
    expect(page).to have_content 'equilateral'
  end
end
