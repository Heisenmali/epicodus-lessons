class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.belongs_to :user, index: true
      t.column :image, :string
      t.column :description, :string
    end
  end
end
