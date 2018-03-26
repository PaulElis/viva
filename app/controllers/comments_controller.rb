class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment
      redirect_to @comment
    else
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.save
      redirect_to @comment
    else
      render @comment
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

  end

private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
