class AddAppIdToPublisher < ActiveRecord::Migration
  def change
    add_column :publishers, :app_id, :integer
  end
end
