class CreateChat < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.belongs_to :account

      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
