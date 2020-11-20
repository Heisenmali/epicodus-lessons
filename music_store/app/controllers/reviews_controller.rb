class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @product = Product.find_by(id: params[:product_id])
  end

  def create 
    @product = Product.find_by(id: params[:product_id])
    @review = Review.create(review_params)
    user = current_user
    user.reviews << @review
    @product.reviews << @review

    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end