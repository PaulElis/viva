class UserCommentsController < ApplicationController

  def index
    @userusercomments = UserComment.all
  end

  def new
    @usercomment = UserComment.new
  end

  def create

    # @user = User.find[params[:id]]
    @usercomment = UserComment.new(usercomment_params)
    # @usercomment.posted_id = session[:user_id]
    # @usercomment.received_id = @user.id
    if @usercomment.save
      redirect_to user_path(params[:user_comment][:received_id])
    else
      render user_path(params[:user_comment][:received_id])
    end
  end

  def show
    @usercomment = UserComment.find(params[:id])
  end

  def edit
    @usercomment = UserComment.find(params[:id])
  end

  def update
    @usercomment = UserComment.find(params[:id])
    if @usercomment.save
      redirect_to user_path(params[:user_comment][:received_id])
    else
      redirect_to user_path(params[:user_comment][:received_id])
    end
  end

  def destroy
    @usercomment = UserComment.find(params[:id])

  end

  private

  def usercomment_params
    params.require(:user_comment).permit(:posted_id, :received_id, :content)
  end

end
