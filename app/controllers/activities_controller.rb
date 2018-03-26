class ActivitiesController < ApplicationController

    def index
      @activities = Activity.all
    end

    def new
      @activity = Activity.new
    end

    def create
      @activity = Activity.create(activity_params)
      if @activity
        redirect_to @activity
      else
        render :new
      end
    end

    def show
      @activity = Activity.find(params[:id])
    end

    def edit
      @activity = Activity.find(params[:id])
    end

    def update
      @activity = Activity.find(params[:id])
      if @activity.save
        redirect_to @activity
      else
        render @activity
      end
    end

    def destroy
      @activity = Activity.find(params[:id])

    end

  private

    def activity_params
      params.require(:activity).permit(:description, :location)
    end

end
