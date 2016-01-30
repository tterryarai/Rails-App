class CreateModelstocks < ActiveRecord::Migration
  def change
    create_table :modelstocks do |t|
      t.string :name
      t.text :description
      t.integer :scale_id
      t.integer :publisher_id
      t.integer :realm_id
      t.integer :series_id
      t.integer :status_id

      t.timestamps
    end
  end
end
