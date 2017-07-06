require 'rails_helper'

describe "userlogin page" do
  it "visits the photos path" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit photos_path
    expect(page).to have_current_path photos_path
  end
end
