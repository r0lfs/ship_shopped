class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find_by(id: params[:id])
  	@contracted = Contract.all
    @boats = current_user.boats.all
    @all_boats = Boat.all
  end
end
