class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.string :name, :null => false
      t.string :issue_date, :default => '(none)'
      t.text :description
      t.string :image_path, :default => '(none)'
      t.string :remark1, :default => '(none)'
      t.string :remark2, :default => '(none)'
      t.string :remark3, :default => '(none)'
      t.string :group1, :default => '(none)'
      t.string :group2, :default => '(none)'
      t.string :group3, :default => '(none)'
      t.string :price, :default => '(none)'
      t.string :area, :null => false
      t.string :status, :null => false
      t.integer :leaf_id, :default => '0'

      t.timestamps null: false
    end
  end
end
