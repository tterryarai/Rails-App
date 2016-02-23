class AddAreaToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :area, :string
  end
end
