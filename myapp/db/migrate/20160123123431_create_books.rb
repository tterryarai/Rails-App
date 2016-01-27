class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, :null => false
      t.string :volume, :null => false, :default => '-'
      t.text :description

      t.timestamps
    end
  end
end
