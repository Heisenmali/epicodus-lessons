class ChangeMediasToMedia < ActiveRecord::Migration[5.1]
  def change
    drop_table :medias

    create_table(:media) do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :tag, index: true
      t.timestamps
    end
  end
end
