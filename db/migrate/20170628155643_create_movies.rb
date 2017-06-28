class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.column :title, :string
      t.timestamps
    end
  end
end
