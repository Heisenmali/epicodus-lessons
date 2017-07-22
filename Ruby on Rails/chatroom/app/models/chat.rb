class Chat < ApplicationRecord
  has_many :messages
  has_many :member_accounts, through: :messages, source: :account
end
