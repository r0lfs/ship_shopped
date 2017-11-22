class JobsController < ApplicationController
  def index
    @jobs = Job.all.reverse
    @boats = current_user.boats.all
    @all_boats = Boat.all
    @contracted = Contract.all
    p params
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.origin != @job.destination
      @job.save
      redirect_to root_path
    elsif @job.origin == @job.destination
      flash[:alert] = 'Origin and Destination must be different!'
      render 'new'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def job_params
    params.require(:job).permit(:user_id, :origin, :destination, :description, :cost, :containers, :job_name)
  end
end
