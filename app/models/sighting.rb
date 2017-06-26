class Sighting < ActiveRecord::Base
  belongs_to :animal
  validates :location, :presence => true
end
