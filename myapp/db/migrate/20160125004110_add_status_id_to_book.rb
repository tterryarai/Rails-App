class AddStatusIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :status_id, :integer
  end
end
