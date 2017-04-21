require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the application path', {:type => :feature} do
  it 'it processes the user entry and returns...' do
    visit '/'
    fill_in 'input_id', :with => 'input'
    click_button 'button_id'
    expect(page).to have_content 'expected output'
  end
end
