require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('process the user entry and return the scrabble score') do
    visit('/')
    fill_in('word', :with => 'zebra')
    click_button('Submit')
    expect(page).to have_content(16)
  end
end
