class Store < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :brands, through: :brand_stores
  
  before_create :capitalize_name

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :name, uniqueness: { case_sensitive: false }
  validates :location, presence: true
  
  
  private
    def capitalize_name
      self.name.capitalize!
      self.location.capitalize!
    end
end