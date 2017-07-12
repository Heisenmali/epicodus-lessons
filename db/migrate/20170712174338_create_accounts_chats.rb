class CreateAccountsChats < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts_chats do |t|
      t.belongs_to :account
      t.belongs_to :chat

      t.timestamps
    end
  end
end
