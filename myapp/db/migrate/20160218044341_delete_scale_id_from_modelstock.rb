class DeleteScaleIdFromModelstock < ActiveRecord::Migration
  def change
    remove_column :modelstocks, :scale_id
  end
end
