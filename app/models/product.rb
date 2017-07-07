class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end