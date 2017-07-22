class AddChatAdminIdToChats < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :chat_admin_id, :integer
  end
end
