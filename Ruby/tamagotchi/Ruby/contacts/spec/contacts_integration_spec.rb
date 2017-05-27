require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("index path", {:type => :feature}) do
  it("will show a list of all contacts") do
    visit("/")
    expect(page).to have_content("")
  end
end
