class AddStatusToModelstock < ActiveRecord::Migration
  def change
    add_column :modelstocks, :status, :string
  end
end
