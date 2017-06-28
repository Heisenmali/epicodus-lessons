class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.column :stars, :integer
      t.column :title, :string
      t.column :review, :string
      t.column :movie_id, :integer
      t.column :user_id, :integer
      t.timestamps
    end
  end
end
