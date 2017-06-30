class Product < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :name, :cost, :country, presence: true

end