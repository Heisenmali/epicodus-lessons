require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('process the users entry and displays a result') do
    visit('/')
    fill_in('word', :with => 'racecar')
    click_button('Submit')
    expect(page).to have_content('racecar is a palindrome!')
  end
end
