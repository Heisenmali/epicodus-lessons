require 'rails_helper'

describe 'the CRUD for order_item path' do
  before :each do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
    @product = FactoryGirl.create(:product)
  end

  it 'adds a new item to the cart' do
    visit products_path
    click_on @product.name
    click_on 'Add to cart'
    expect(page).to have_content(@product.name)
    expect(page).to have_current_path(cart_index_path)
  end

  it 'deletes an item from the cart' do
    visit products_path
    click_on @product.name
    click_on 'Add to cart'
    click_on 'x'
    expect(page).to have_no_content(@product.name)
    expect(page).to have_content('Your cart is empty')
  end

end