class AddScaleToModelstock < ActiveRecord::Migration
  def change
    add_column :modelstocks, :scale, :string
  end
end
