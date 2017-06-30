class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "product was saved"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end


private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end
end