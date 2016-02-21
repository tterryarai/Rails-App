class RemoveSeriesFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :series
  end
end
