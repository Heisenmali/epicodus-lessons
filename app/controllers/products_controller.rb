class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def featured
    @product_no_1 = Product.most_reviewed
    @newest_three = Product.three_most_recent 
  end

  def new
    @product = Product.new
  end
  
  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    render :index
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

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end


private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end
end