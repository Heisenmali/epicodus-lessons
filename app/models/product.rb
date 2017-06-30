class Product < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :name, :cost, :country, presence: true


  scope :most_reviewed, -> do
    products = Product.all
    products.sort_by { |product| product.reviews.length }.last
  end
end