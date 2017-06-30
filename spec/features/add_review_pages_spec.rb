require 'rails_helper'

describe 'the add review route' do
  it 'adds a new review to a product' do
    product = Product.create(name: 'Eric', cost: 3, country: 'U.K.')
    user = User.create(name: 'bob')
    visit products_path
    click_on 'Eric'
    click_on 'Add Review'
    fill_in 'Rating', with: "3"
    lorem = Faker::Lorem.characters(51)
    fill_in 'Content', with: lorem
    click_on 'Create Review'
    expect(page).to have_content lorem
  end

  it 'adds a new review to a product' do
    product = Product.create(name: 'Eric', cost: 3, country: 'U.K.')
    user = User.create(name: 'bob')
    visit products_path
    click_on 'Eric'
    click_on 'Add Review'
    fill_in 'Rating', with: ""
    lorem = Faker::Lorem.characters(51)
    fill_in 'Content', with: lorem
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end