require 'rails_helper'

describe 'the add product process' do
  it 'adds a new product' do
    visit new_product_path
    fill_in 'Name', :with => 'Zeus'
    fill_in 'Cost', :with => 3
    fill_in 'Country', :with => 'U.K.'
    click_on 'Create Product'
    expect(page).to have_content 'Zeus'
  end

  it "gives error when no content is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end