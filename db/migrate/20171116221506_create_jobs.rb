class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
    	t.references :user, foreign_key: true
    	t.string :origin
    	t.string :destination
    	t.string :description 
    	t.integer :cost
    	t.integer :containers
    	t.string :job_name

      t.timestamps
    end
    add_index :jobs, :job_name, unique: true

  end
end
