class Store < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :brands, through: :brand_stores
  
  before_create :capitalize_name

  validates :name, presence: true
  validates :location, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  
  
  private
    def capitalize_name
      self.name.capitalize!
      self.location.capitalize!
    end
end