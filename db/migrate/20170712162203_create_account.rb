class CreateAccount < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :user

      t.string :username
      t.attachment :avatar

      t.timestamps
    end
  end
end
