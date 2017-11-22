class ContractsController < ApplicationController
  def create
  	@contract = Contract.new(contract_params)
  	@contract.save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
  end

  private
  def contract_params
    params.require(:contract).permit(:job_id, :boat_id)
  end
end
