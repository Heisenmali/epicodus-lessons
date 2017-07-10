class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_item = OrderItem.new
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end
end