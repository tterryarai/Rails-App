class RemoveStatusFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :status
  end
end
