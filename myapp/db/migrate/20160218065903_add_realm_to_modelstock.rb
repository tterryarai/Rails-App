class AddRealmToModelstock < ActiveRecord::Migration
  def change
    add_column :modelstocks, :realm, :string
  end
end
