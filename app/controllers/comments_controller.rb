class CommentsController < ApplicationController
  def new
    @link = Link.find(params[:link_id])
    @comment = Comment.new
  end

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.create(comment_params)
    if @comment.save
      redirect_to link_path(@link)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
