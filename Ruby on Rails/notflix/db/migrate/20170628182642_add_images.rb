class AddImages < ActiveRecord::Migration[5.1]
  def change
    change_table :movies do |t|
      t.column :image, :string
    end
  end
end
