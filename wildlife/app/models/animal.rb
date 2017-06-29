class Animal < ActiveRecord::Base
  has_many :sightings
  validates :latitude, :presence => true
end
