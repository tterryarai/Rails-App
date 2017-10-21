class CreateVirtualPoints < ActiveRecord::Migration
  def change
    create_table :virtual_points do |t|
      t.string :name, :null => false
      t.integer :order, :null => false
      t.float :distance, :null => false
      t.text :description
      t.float :lat
      t.float :lng
      t.string :image_path
      t.string :icon_path
      t.integer :virtual_course_id, :null => false

      t.timestamps null: false
    end
  end
end
