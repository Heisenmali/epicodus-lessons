class OrderItemsController < ApplicationController

  def index
    if (OrderItem.all.length != 0)
      @items = current_account.order_items.all
    else
      flash[:notice] =" Your cart is empty"
    end
  end

  def create
    current_account.order_items.create(order_item_params)
    redirect_to cart_index_path
  end

  def destroy
    @item = OrderItem.find_by(id: params[:id]).destroy()
    redirect_to cart_index_path
  end

private
  def order_item_params
    params.require(:order_item).permit(:product_id)
  end
end