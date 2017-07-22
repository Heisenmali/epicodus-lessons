class CreateReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :author, :string
      t.column :content, :string
      t.belongs_to :song
      t.timestamps
    end
  end
end
