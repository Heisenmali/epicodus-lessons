class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.column :artist, :string
      t.column :title, :string
      t.timestamps
    end
  end
end
