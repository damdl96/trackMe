class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def index
    @logs = Log.all
  end

  def today
    @logs = Log.where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
  end

  def show
    @log = Log.find(params[:id])
  end

  def create
    @activities = Activity.all
    @log = Log.new(log_params)
    if @log.save
      redirect_to logs_path
    else
      render 'new'
    end
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to logs_path
  end
  
  private
  def log_params
    params.require(:log).permit(:activityname, :timestart, :timeend, :notes)
  end
end
