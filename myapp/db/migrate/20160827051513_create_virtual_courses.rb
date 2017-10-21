class CreateVirtualCourses < ActiveRecord::Migration
  def change
    create_table :virtual_courses do |t|
      t.string :name, :null => false
      t.float :length, :null => false
      t.text :description
      t.string :image_path
      t.string :icon_path

      t.timestamps null: false
    end
  end
end
