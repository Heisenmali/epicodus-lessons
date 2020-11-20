class AddTeaserToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :teaser, :string
  end
end
