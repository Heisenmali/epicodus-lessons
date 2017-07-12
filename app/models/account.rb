class Account < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :chat_rooms, through: :messages, source: :chat
end
