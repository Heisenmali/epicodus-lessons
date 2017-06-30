class Product < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :name, :cost, :country, presence: true


  scope :most_reviewed, -> do
    products = Product.all
    products.sort_by { |product| product.reviews.length }.last
  end

  scope :three_most_recent, -> do
    products = Product.all
    sorted_products = products.sort_by { |product| product.created_at }.reverse
    sorted_products.slice(0, 3)
  end

  scope :made_in_usa, -> do
    products = Product.all
    products.find_all { |product| product.country == "USA"}
  end
end