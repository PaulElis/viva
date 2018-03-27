class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = session[:user_id]
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  private

    def list_params
      params.require(:list).permit(:description, :location, :user_id, :activity_id)
    end

end
