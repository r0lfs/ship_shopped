class JobsController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    if @user
      @user_jobs = @user.jobs.all.reverse
    end
    @job = Job.new
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
    @job = Job.find_by(id: params[:id])
  end

  def update
     @job = Job.find_by(id: params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render 'edit'
    end
  end

  def destroy
    respond_to do |format|
      @job = Job.find(params[:id])
      if Contract.where(job_id: @job.id).exists?
        @contracts = Contract.where(job_id: @job.id).all
        @contracts.each do |contract|
          Boat.find_by(id: contract.boat_id).update(under_contract: false)
          contract.destroy
        end
      end
      @job.destroy
      format.js
      format.html {redirect_to jobs_path}
    end
  end

  private
  def job_params
    params.require(:job).permit(:user_id, :origin, :destination, :description, :cost, :containers, :job_name)
  end
end
