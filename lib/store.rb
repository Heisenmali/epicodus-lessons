class Store < ActiveRecord::Base
  has_many :brand_stores, dependent: :destroy
  has_many :brands, through: :brand_stores
  
  before_create :capitalize_name

  private
    def capitalize_name
      self.name.capitalize!
      self.location.capitalize!
    end
end