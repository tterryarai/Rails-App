class AddAppIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :app_id, :integer
  end
end
