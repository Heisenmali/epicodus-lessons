require 'rails_helper'

describe 'the login path' do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

   it "logs in a user correctly" do
    expect(page).to have_current_path root_path
  end 
  
  it "denies a basic user access to the admin pane" do
    visit products_path
    expect(page).to have_current_path products_path
  end 

  it "logs out a user" do
    logout(:user)
    visit products_path
    expect(page).to have_current_path new_user_session_path
  end
end

describe 'the admin login path' do
  it 'logs in an admin and allows access to admin pane' do
    user = FactoryGirl.create(:user, admin: true)
    login_as(user, :scope => :user)
    visit rails_admin_path
    expect(page).to have_current_path rails_admin_path
  end
end