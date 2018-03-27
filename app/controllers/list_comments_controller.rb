class ListCommentsController < ApplicationController

  def index
    @listcomments = ListComment.all
  end

  def new
    @listcomment = ListComment.new
  end

  def create

    # @user = User.find[params[:id]]
    @listcomment = ListComment.new(listcomment_params)
    # @listcomment.posted_id = session[:user_id]
    # @listcomment.list_id = @user.id
    if @listcomment.save
      redirect_to list_path(params[:list_comment][:list_id])
    else
      render list_path(params[:list_comment][:list_id])
    end
  end

  def show
    @listcomment = ListComment.find(params[:id])
  end

  def edit
    @listcomment = ListComment.find(params[:id])
  end

  def update
    @listcomment = ListComment.find(params[:id])
    if @listcomment.save
      redirect_to list_path(params[:list_comment][:list_id])
    else
      redirect_to list_path(params[:list_comment][:list_id])
    end
  end

  def destroy
    @listcomment = ListComment.find(params[:id])

  end

  private

  def listcomment_params
    params.require(:list_comment).permit(:user_id, :list_id, :content)
  end


end
