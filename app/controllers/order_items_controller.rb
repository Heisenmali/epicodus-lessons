class OrderItemsController < ApplicationController

  def index
    @items = current_account.order_items.all
  end

  def create
    current_account.order_items.create(order_item_params)
    redirect_to order_items_path
  end

private
  def order_item_params
    params.require(:order_item).permit(:product_id)
  end
end