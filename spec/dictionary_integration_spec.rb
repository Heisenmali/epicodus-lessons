require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "The hompeage path", {:type => :feature} do
  before do
    Word.clear
  end
  it "displays the add new word button on homepage" do
    visit "/"
    expect(page).to have_content("Add a word!")
  end
end

describe "The add new word path", {:type => :feature} do
  before do
    Word.clear
  end
  it "displays the add new word page, containing form" do
    visit "/"
    click_link("new-word")
    expect(page).to have_selector("form")
  end

  it "fills out form and shows success page" do
    visit "/new-word"
    fill_in("word", with: "hello" )
    fill_in("definition", with: "world")
    click_button("submit")
    expect(page).to have_content("yay!")
  end
end

describe "The word path", {:type => :feature} do
  before do
    Word.clear
  end
  it "displays the word selected on homepage and shows it's definitions" do
    visit "/new-word"
    fill_in("word", with: "hello" )
    fill_in("definition", with: "world")
    click_button("submit")
    visit "/hello"
    expect(page).to have_content("hello: world")
  end
end

describe "The add definition path", {:type => :feature} do
  before do
    Word.clear
  end
  it "allows user to add a definition to current word" do
    visit "/new-word"
    fill_in("word", with: "hello" )
    fill_in("definition", with: "world")
    click_button("submit")
    visit "/hello"
    fill_in("added-definition", with: "dude")
    click_button("Add definition")
    visit("/hello")
    expect(page).to have_content("dude")
  end
end

