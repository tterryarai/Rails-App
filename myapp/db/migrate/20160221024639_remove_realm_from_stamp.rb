class RemoveRealmFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :realm
  end
end
