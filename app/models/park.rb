class Park < ApplicationRecord
  paginates_per 5

  scope :random_park, -> do
    parks = Park.all
    parks[rand(0..parks.length)]
  end
end
