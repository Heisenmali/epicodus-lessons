class Store < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :brands, through: :brand_stores
end