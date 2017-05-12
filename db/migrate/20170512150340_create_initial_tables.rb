class CreateInitialTables < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |s|
      s.column :name, :string
      s.column :location, :string
    end

    create_table :brands do |s|
      s.column :name, :string
      s.column :price, :string
    end

    create_table :brand_stores do |t|
      t.belongs_to :store, index: true
      t.belongs_to :brand, index: true
    end
  end
end