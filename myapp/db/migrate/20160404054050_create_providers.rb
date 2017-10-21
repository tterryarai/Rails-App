class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :app_id, :null => false
      t.string :name, :null => false

      t.timestamps null: false
    end
  end
end
