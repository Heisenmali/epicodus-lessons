class UpdateSightings < ActiveRecord::Migration[5.0]
  def change
    remove_column(:sightings, :name)
    remove_column(:sightings, :species)
  end
end
