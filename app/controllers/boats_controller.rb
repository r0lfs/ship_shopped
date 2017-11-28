class BoatsController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    if @user
      @user_boats = @user.boats.all.reverse
    end
    @boats = Boat.all.reverse
    @boat = Boat.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    respond_to do |format|
      if @boat.save
        format.js 
        format.json
        format.html {redirect_to boats_path}
      else
        format.html {render 'new'}
      end
    end
  end

  def show
    @boats = User.find_by(id: params[:id]).boats.all
  end

  def edit
    @boat = Boat.find_by(id: params[:id])
  end

  def update
    @boat = Boat.find_by(id: params[:id])
    if @boat.update(boat_params)
      redirect_to boats_path
    else
      render 'edit'
    end
  end

  def destroy
    respond_to do |format|
      @boat = Boat.find(params[:id])
      if Contract.where(boat_id: @boat.id).exists?
        Contract.find_by(boat_id: @boat.id).destroy
      end
      @boat.destroy
      format.js
      format.html {redirect_to boats_path}
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:user_id, :location, :containers, :ship_name, :avatar, :under_contract)
  end

  
end
