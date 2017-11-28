class AddOpenAndCompleteBooleanToJobs < ActiveRecord::Migration[5.1]
  def change
 		add_column :jobs, :open, :boolean, :default => true
 		add_column :jobs, :complete, :boolean, :default => false
  end
end
