class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  has_many :order_items, dependent: :destroy
  has_many :accounts, through: :order_items

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end