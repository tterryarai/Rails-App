class DropTableScales < ActiveRecord::Migration
  def change
    drop_table :scales
  end
end
