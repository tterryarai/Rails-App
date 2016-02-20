class AddAppIdToRealm < ActiveRecord::Migration
  def change
    add_column :realms, :app_id, :integer
  end
end
