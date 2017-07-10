class OrderItemsController < ApplicationController

  def create
    current_account.order_items.create(order_item_params)
  end

private
  def order_item_params
    params.require(:order_item).permit(:product_id)
  end
end