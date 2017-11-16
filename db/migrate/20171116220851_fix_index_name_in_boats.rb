class FixIndexNameInBoats < ActiveRecord::Migration[5.1]
  def self.up
  	add_index(:boats, [:ship_name], unique: true) 
  end

  def self.down
  	remove_index :boats, :name
  end
end
