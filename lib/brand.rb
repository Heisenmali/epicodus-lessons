class Brand < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :stores, through: :brand_stores

  before_create :capitalize_name, :price_adjust

  validates :name, presence: true
  validates :price, presence: true
  validates :name, uniqueness: { case_sensitive: false }


  private
    def capitalize_name
      self.name.capitalize!
    end

    def price_adjust
      self.price = "%.2f" % self.price
    end
end 

