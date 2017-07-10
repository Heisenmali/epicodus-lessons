class OrderItem < ActiveRecord::Base
  belongs_to :product, dependent: :destroy
  belongs_to :account, dependent: :destroy
end