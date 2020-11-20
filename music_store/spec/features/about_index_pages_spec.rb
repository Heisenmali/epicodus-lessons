require 'rails_helper'

describe 'the about page' do
  
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  it 'should display the about page' do
    visit about_index_path
    expect(page).to have_content 'About us'
  end
end