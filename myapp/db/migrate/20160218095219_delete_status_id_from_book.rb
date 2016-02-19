class DeleteStatusIdFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :status_id
  end
end
