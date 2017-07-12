class Chat < ApplicationRecord
  has_and_belongs_to_many :accounts
  has_many :accounts, through: :messages
  has_many :messages
end
