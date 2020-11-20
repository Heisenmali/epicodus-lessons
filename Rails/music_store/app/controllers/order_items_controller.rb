class OrderItemsController < ApplicationController
  include CalculateAmount, ManageCart



  def index
    if (find_unresolved_items.any?)
      @items = find_unresolved_items
      @amount = calculate_cart_amount(@items)
    else
      flash[:notice] =" Your cart is empty, why don't you add something!"
    end
  end

  def create
    current_account.order_items.create(order_item_params)
    current_account.update(cart_status: "full")
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