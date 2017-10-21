class AddNameToVirtualRun < ActiveRecord::Migration
  def change
    add_column :virtual_runs, :name, :string
  end
end
