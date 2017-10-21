class AddLastToVirtualRun < ActiveRecord::Migration
  def change
    add_column :virtual_runs, :last, :float, :default => 0
  end
end
