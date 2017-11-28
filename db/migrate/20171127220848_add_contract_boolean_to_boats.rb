class AddContractBooleanToBoats < ActiveRecord::Migration[5.1]
  def change
  	add_column :boats, :under_contract, :boolean, :default => false
  end
end
