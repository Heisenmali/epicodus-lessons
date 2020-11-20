require 'rails_helper'

describe "the add a link process" do
  it "adds a new link" do
    visit links_path
    click_link 'Add a link'
    fill_in 'Title', :with => 'Test Title'
    fill_in 'Url', :with => 'Test URL'
    click_on 'Create Link'
    expect(page).to have_content 'Link successfully created!'
  end

  it "gives error when no title or url is entered" do
    visit new_link_path
    click_on 'Create Link'
    expect(page).to have_content 'errors'
  end
end
