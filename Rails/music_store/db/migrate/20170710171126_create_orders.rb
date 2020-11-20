class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.belongs_to :account
      t.belongs_to :product

      t.timestamps
    end
  end
end
