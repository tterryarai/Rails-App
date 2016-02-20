class DeleteRealmIdFromSeries < ActiveRecord::Migration
  def change
    remove_column :series, :realm_id
  end
end
