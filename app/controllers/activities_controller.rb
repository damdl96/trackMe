class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def index
    @activities = Activity.all
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
   
    if @activity.update(activity_params)
      redirect_to @activity
    else
      render 'edit'
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :description)
  end
end
