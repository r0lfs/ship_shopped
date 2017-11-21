class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to root_path      
    else
      render 'new'
    end
  end

  def show
    @boats = User.find_by(id: params[:id]).boats.all
  end

  def edit
  end

  def update
  end

  def destroy
    respond_to do |format|
      Boat.find(params[:id]).destroy
      format.js
      format.html {redirect_to boats_path}
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:user_id, :location, :containers, :ship_name, :avatar)
  end
end
