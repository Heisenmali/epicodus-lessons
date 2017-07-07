require 'rails_helper'

describe 'the show products path' do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @product = FactoryGirl.create(:product)
  end

  it 'shows a product detail page' do
    visit products_path
    click_on @product.name
    expect(page).to have_content @product.description
  end
end