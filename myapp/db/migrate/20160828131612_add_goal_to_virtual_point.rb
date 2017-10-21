class AddGoalToVirtualPoint < ActiveRecord::Migration
  def change
    add_column :virtual_points, :goal, :boolean, :null => false, :default => false
  end
end
