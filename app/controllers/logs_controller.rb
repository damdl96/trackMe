class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])
    times = @log.timestart
    timee = @log.timeend
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

  private
  def log_params
    params.require(:log).permit(:activityname, :timestart, :timeend, :notes)
  end
end
