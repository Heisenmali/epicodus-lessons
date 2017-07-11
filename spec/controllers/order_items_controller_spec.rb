require 'rails_helper'

describe OrderItemsController do
  before :each do
    @user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  describe '#index' do
  end
end