class CreateMessage < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.belongs_to :accounts
      t.belongs_to :chat

      t.string :content

      t.timestamps
    end
  end
end
