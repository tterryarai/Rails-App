class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :app_id, :null => false
      t.string :group1, :null => false
      t.string :group2, :null => false

      t.timestamps null: false
    end
  end
end
