class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :photos
  has_many :tags

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   def self.find_tagged_users(photo_id)
     users = []
     Tag.users_tagged(photo_id).each do |tag|
       users.push(User.find(tag.user_id))
     end
     users
   end
end
