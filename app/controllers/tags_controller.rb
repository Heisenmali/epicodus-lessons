class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.find_or_initialize_by(tag_params)
    if @tag.save
      flash[:notice] = "Successfully tagged!"
      redirect_to  photos_path
    else
      render :new
    end
  end

private
  def tag_params
    params.require(:tag).permit(:user_id, :photo_id)
  end
end
