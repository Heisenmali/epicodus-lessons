require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


# describe("the phrase parser path", {:type => :feature}) do
#   it("processes the user input and returns correct message if its a palindrome") do
#     visit("/")
#     fill_in("phrase1", :with => "madam")
#     fill_in("phrase2", :with => "anagram")
#     click_button("what am i?")
#     expect(page).to have_content("'madam' is a palindrome")
#   end
# end

describe "The hompeage path", {:type => :feature} do
  it "displays the add new word button on homepage" do
    visit "/"
    expect(page).to have_content("Add a word!")
  end
end

describe "The add new word path", {:type => :feature} do
  it "displays the add new word page, containing form" do
    visit "/"
    click_link("new-word")
    expect(page).to have_selector("form")
  end
end
