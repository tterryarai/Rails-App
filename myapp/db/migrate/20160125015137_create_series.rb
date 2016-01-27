class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.integer :realm_id

      t.timestamps
    end
  end
end
