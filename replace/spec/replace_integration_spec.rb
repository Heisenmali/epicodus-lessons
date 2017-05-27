require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the replace path', {:type => :feature}) do
  it('process user input and returns a modified string') do
    visit('/')
    fill_in('string', :with => 'hello world')
    fill_in('find', :with => 'world')
    fill_in('replace', :with => "Nikki")
    click_button('Submit')
    expect(page).to have_content('hello Nikki')
  end
end
