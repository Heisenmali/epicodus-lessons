class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.string :cart_status

      t.timestamps
    end
  end
end
