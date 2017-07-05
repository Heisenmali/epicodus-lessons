require 'rails_helper'

describe 'the edit product process' do
  it 'edits a product' do
    product = Product.create(name: 'Eric', cost: 3, country: 'U.K.')
    visit products_path
    click_on 'Eric'
    click_on 'Edit'
    fill_in 'Name', :with => 'Zeus'
    fill_in 'Cost', :with => 3
    fill_in 'Country', :with => 'U.K.'
    click_on 'Update Product'
    expect(page).to have_content 'Zeus'
  end

  it 'edits a product' do
    product = Product.create(name: 'Eric', cost: 3, country: 'U.K.')
    visit products_path
    click_on 'Eric'
    click_on 'Edit'
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => 3
    fill_in 'Country', :with => 'U.K.'
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end