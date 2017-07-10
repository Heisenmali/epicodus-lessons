class OrderItem < ApplicationController

  def create
    new_order_item = current_account.order_items.create(#product_id)
  end
end