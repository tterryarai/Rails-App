class RemoveRegionFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :region
  end
end
