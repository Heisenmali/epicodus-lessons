class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :product

      t.string :content
      t.timestamps
    end
  end
end
