class AddSeriesIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :series_id, :integer
  end
end
