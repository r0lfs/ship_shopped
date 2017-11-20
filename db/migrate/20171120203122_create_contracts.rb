class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
			t.belongs_to :job, index: true
      t.belongs_to :boat, index: true
      t.timestamps
    end
  end
end
