class ActionsController < ApplicationController

  def index
    @actions = Action.all
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.create(action_params)
    if @action
      redirect_to @action
    else
      render :new
    end
  end

  def show
    @action = Action.find(params[:id])
  end

  def edit
    @action = Action.find(params[:id])
  end

  def update
    @action = Action.find(params[:id])
    if @action.save
      redirect_to @action
    else
      render @action
    end
  end

  def destroy
    @action = Action.find(params[:id])

  end

private

  def action_params
    params.require(:action).permit(:description, :location)
  end

end
