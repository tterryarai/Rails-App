class CreateLeafs < ActiveRecord::Migration
  def change
    create_table :leafs do |t|
      t.string :title, :null => false
      t.string :subtitle
      t.text :description
      t.string :group1, :null => false
      t.string :group2, :null => false
      t.string :group3, :default => 'none'

      t.timestamps null: false
    end
  end
end
