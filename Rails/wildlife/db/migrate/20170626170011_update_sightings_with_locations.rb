class UpdateSightingsWithLocations < ActiveRecord::Migration[5.0]
  def change
    add_column(:sightings, :region_id, :integer)
    remove_column(:sightings, :latitude)
    remove_column(:sightings, :longitude)
  end
end
