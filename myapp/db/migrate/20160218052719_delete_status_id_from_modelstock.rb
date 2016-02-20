class DeleteStatusIdFromModelstock < ActiveRecord::Migration
  def change
    remove_column :modelstocks, :status_id
  end
end
