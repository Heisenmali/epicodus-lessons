class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :rating, :integer
      t.column :content, :string
      t.belongs_to :product
      t.belongs_to :user

      t.timestamps
    end
  end
end
