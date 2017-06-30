class User < ActiveRecord::Base

  has_many :reviews
  has_many :products, through: :reviews
  
  validates :name, presence: true

end