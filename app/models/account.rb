class Account < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :chats
  has_many :chats, through: :messages
  has_many :messages

end
