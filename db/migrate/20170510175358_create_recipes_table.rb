class CreateRecipesTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column :name, :string
      t.column :rating, :integer
      t.column :instructions, :text

      t.timestamps
    end

    create_table(:ingredients) do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table(:tags) do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table(:foods) do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps
    end

    create_table(:medias) do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :tag, index: true
      t.timestamps
    end


  end
end
