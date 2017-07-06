require 'rails_helper'

describe "userlogin page" do

  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it "visits the photos path" do
    visit photos_path
    expect(page).to have_current_path photos_path
  end

  it "visits the photos path" do
    visit new_photo_path

    expect(page).to have_current_path new_photo_path
  end
end

# it "Adds a new product" do
#   visit products_path
#   click_link 'New Product'
#   fill_in 'Name', :with => 'beans'
#   fill_in 'Cost', :with => '4'
#   fill_in 'Origin', :with => 'Britain'
#   click_on 'Create Product'
#   expect(page).to have_content 'Product successfully added!'
# end
