class AddRealmToBook < ActiveRecord::Migration
  def change
    add_column :books, :realm, :string
  end
end
