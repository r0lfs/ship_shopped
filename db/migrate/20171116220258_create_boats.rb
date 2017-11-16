class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.references :user, foreign_key: true
      t.integer :containers
      t.string :location
      t.string :ship_name


      t.timestamps
    end
    add_index :boats, :name,    unique: true
  end
end
