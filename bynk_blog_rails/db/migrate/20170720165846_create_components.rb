class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :component_type
      t.string :content

      t.belongs_to :post

      t.timestamps
    end
  end
end
