class DeleteRealmIdFromModelstock < ActiveRecord::Migration
  def change
    remove_column :modelstocks, :realm_id
  end
end
