class Park < ApplicationRecord
  paginates_per 5
  validates :name, presence: true

  scope :random_park, -> do
    parks = Park.all
    parks[rand(0..parks.length)]
  end

  scope :search_parks, -> (search_term = nil) do
    Park.where(name: search_term)
  end
end
