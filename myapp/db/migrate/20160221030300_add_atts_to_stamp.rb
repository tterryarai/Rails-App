class AddAttsToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :region, :integer
    add_column :stamps, :status, :integer
    add_column :stamps, :group1, :string
    add_column :stamps, :group2, :string
    add_column :stamps, :group3, :string
    add_column :stamps, :price, :string
  end
end
