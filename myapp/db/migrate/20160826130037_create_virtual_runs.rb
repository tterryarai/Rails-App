class CreateVirtualRuns < ActiveRecord::Migration
  def change
    create_table :virtual_runs do |t|
      t.string :status, :null => false, :default => 'Start'
      t.float :length, :null => false, :default => 0

      t.timestamps null: false
    end
  end
end
