class AddOwnToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :own, :string
  end
end
