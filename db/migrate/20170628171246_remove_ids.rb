class RemoveIds < ActiveRecord::Migration[5.1]
  def change
    remove_column :ratings, :movie_id
    remove_column :ratings, :user_id
  end
end
