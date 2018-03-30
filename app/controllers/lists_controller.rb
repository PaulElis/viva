class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @image = @list.activity.category.downcase.split(" ").join("-") << ".jpg"
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
  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to @list
    else
      redirect_to @list
    end

  end
    def complete
      @list = List.find(params[:id])
      @list.completed = true
      @list.save

      redirect_to @list

    end


  private

    def list_params
      params.require(:list).permit(:description, :location, :user_id, :activity_id,:list_picture, :activity, activity_attributes:[:category])
    end

end
