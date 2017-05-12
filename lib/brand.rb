class Brand < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :stores, through: :brand_stores
end 