require 'rails_helper'

describe 'the create review path' do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @product = FactoryGirl.create(:product)
  end

  it 'should add a review to a product' do
    visit products_path
    click_on @product.name
    click_on 'add a review'
    fill_in 'Content', with: 'test_review_content'
    click_on 'Create Review'
    expect(page).to have_content 'test_review_content'
  end

  it 'show form page if validations fail' do
    visit products_path
    click_on @product.name
    click_on 'add a review'
    fill_in 'Content', with: ''
    click_on 'Create Review'
    expect(page).to have_content 'Please fix these errors:'
  end
end