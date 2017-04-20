require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the coin path', {:type => :feature} do
  it 'it processes the user entry and returns the maximum amount of change for each coin type' do
    visit '/'
    fill_in 'input_string', :with => '.76'
    click_button 'please'
    expect(page).to have_content 'Your change is 3 quarter(s), 0 dime(s), 0 nickel(s) and 1 pennie(s).'
  end  
end
