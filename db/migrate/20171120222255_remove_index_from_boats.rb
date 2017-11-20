class RemoveIndexFromBoats < ActiveRecord::Migration[5.1]
  def change
  	remove_index :boats, name: "index_boats_on_name"
  end
end
