class ContractsController < ApplicationController
  def create
  	@contract = Contract.new(contract_params)
  	if @contract.save
      @boat = Boat.find_by(id: contract_params[:boat_id])
      @boat.update(under_contract: true)
      @under_contract = @boat
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def destroy
    respond_to do |format|
      @contract = Contract.find_by(boat_id: params[:id])
      Boat.find_by(id: @contract.boat_id).update(under_contract: false)
      @contract.destroy
      format.js
      format.html {redirect_to root_path}
    end
  end

  private
  def contract_params
    params.require(:contract).permit(:job_id, :boat_id)
  end
end

