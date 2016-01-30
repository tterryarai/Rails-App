class AddAppIdToSeries < ActiveRecord::Migration
  def change
    add_column :series, :app_id, :integer
  end
end
