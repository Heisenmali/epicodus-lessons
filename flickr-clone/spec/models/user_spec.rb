require 'rails_helper'


describe User do
  before :all do
    Rails.application.load_seed
  end
  it {should have_many :photos}
  it {should have_many :tags}

  describe '.find_tagged_users' do
    it 'should return all tagged users of a photo' do
      user = FactoryGirl.create(:user)
      photo = Photo.all.first
      Tag.create(user_id: user.id, photo_id: photo.id)
      expect(User.find_tagged_users(photo.id)).to eq [user]
    end
  end
end
