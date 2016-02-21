class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.string :name, :null => false, :default => '(none)'
      t.string :issue_date
      t.string :status, :null => false, :default => '(none)'
      t.text :description
      t.string :image_path
      t.string :issue_area, :null => false, :default => '(none)'
      t.string :realm, :null => false, :default => '(none)'
      t.string :series, :null => false, :default => '(none)'
      t.string :issue_price
      t.string :remark1
      t.string :remark2
      t.string :remark3

      t.timestamps
    end
  end
end
