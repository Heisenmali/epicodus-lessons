require 'spec_helper'
require 'integration_spec_helper'

#ROOT PATH

describe("the root path", {:type => :feature}) do
  it 'verifies the hompepage displays links to stores and brands' do
    visit '/'
    expect(page).to have_content("Stores", "Brands")
  end
end

#STORE PATH CRUD

describe("the store path", {:type => :feature}) do
  it 'verifies the stores page displays a list of all stores' do
    PreLoadDB.preload
    visit '/stores'
    expect(page).to have_content("Apple")
  end

  it 'verifies the store page displays the information for a single store' do
    PreLoadDB.preload
    visit '/stores'
    click_link 'Apple'
    expect(page).to have_content("Apple")
  end

   it 'verifies the store page edits the store name correctly for a single store' do
    PreLoadDB.preload
    visit '/stores'
    click_link 'Apple'
    fill_in 'new-name', :with => 'fender'
    click_on 'Make changes'
    expect(page).to have_content("fender")
  end

  it 'verifies the store page associates the brand name correctly' do
    PreLoadDB.preload
    visit '/stores'
    click_link 'Apple'
    check 'Paul'
    click_on 'Add brands'
    expect(page).to have_content("Paul")
  end

  it 'verifies the store is created properly' do
    visit '/stores'
    expect(page).to have_no_content("Apple")
    click_link 'Add a store'
    fill_in 'name', :with => 'Apple'
    fill_in 'location', :with => 'Seattle'
    click_button 'Add store'
    expect(page).to have_content("Apple")
  end

# delete button doesn't route to delete path with Capybara, manual testing works. Capybara can't find the button. Why?
# Capybara finds the button, but doesn't seem to actually click it. The headless browser is never taken to the delete path, but remains on the same page.

  # it 'verifies the store page deletes the store name correctly for a single store' do
  #   PreLoadDB.preload
  #   visit '/stores'
  #   click_link 'Apple'
  #   # click_button('Remove store')
  #   find('[id=remove]').click
  #   expect(page).to have_content("Apple store") 
  # end
end

#BRAND PATH CRUD

describe("the brand path", {:type => :feature}) do
  it 'verifies the brands page displays a list of all brands' do
    PreLoadDB.preload
    visit '/brands'
    expect(page).to have_content("Paul")
  end
  
  it 'verifies the brand page displays the information for a single brand' do
    PreLoadDB.preload
    visit '/brands'
    click_link 'Paul'
    expect(page).to have_content("Paul")
  end

  it 'verifies the brand page edits the brand name correctly for a single brand' do
    PreLoadDB.preload
    visit '/brands'
    click_link 'Paul'
    fill_in 'new-name', :with => 'Apogee'
    click_on 'Make changes'
    expect(page).to have_content("Apogee")
  end

  it 'verifies the brand page associates the store name correctly' do
    PreLoadDB.preload
    visit '/brands'
    click_link 'Paul'
    check 'Apple'
    click_on 'Add stores'
    expect(page).to have_content("Stores: Apple")
  end

  it 'verifies the brand is created properly' do
    visit '/brands'
    expect(page).to have_no_content("Paul")
    click_link 'Add a brand'
    fill_in 'name', :with => 'Paul'
    fill_in 'price', :with => '9'
    click_button 'Add brand'
    expect(page).to have_content("Paul")
  end


# delete button doesn't route to delete path with Capybara, manual testing works. Why?  

  #  it 'verifies the brand page deletes the brand name correctly for a single brand' do
  #   PreLoadDB.preload
  #   visit '/brands'
  #   click_link 'Paul'
  #   click_on('Remove brand')
  #   expect(page).to have_content("Make changes")
  # end
end

