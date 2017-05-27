require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the parcel path', {:type => :feature} do
  it 'it processes the user entry and returns shipping cost' do
    visit '/'
    fill_in 'length', :with => '2'
    fill_in 'width', :with => '4'
    fill_in 'weight', :with => '6'

    click_button 'submit'
    expect(page).to have_content '12'
  end
end
