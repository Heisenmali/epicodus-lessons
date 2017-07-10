class OrderItem < ActiveRecord::Base
  belongs_to :products, dependent: :destroy
  belongs_to :account, despendent: :destroy
end