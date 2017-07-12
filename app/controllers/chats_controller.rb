class ChatsController < ApplicationController
  # before_action :except => [:landing] do
  #   flash[:notice] = "Please create an account." unless current_user
  #   redirect_to signup_path unless current_user
  # end
  #
  # before_action :except => [:show, :index, :landing] do
  #   flash[:notice] = "Admin privilages required!" unless is_admin?
  #   redirect_to signin_path unless is_admin?
  # end


  # def landing
  # end

  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      flash[:notice] = "Chat successfully added!"
      redirect_to  chats_path
    else
      render :new
    end
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat= Chat.find(params[:id])
    if @chat.update(chat_params)
      flash[:notice] = "Chat successfully updated!"
      redirect_to chats_path
    else
      render :edit
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    if @chat.destroy
      flash[:notice] = "Chat successfully removed!"
      redirect_to chats_path
    end
  end

private
  def chat_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:chat).permit(:title, :description, :chat_admin_id)
  end
end
