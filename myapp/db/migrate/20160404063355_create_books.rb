class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, :null => false
      t.string :volume, :default => '(none)'
      t.text :description
      t.string :status, :null => false
      t.string :group1, :default => '(none)'
      t.string :group2, :default => '(none)'
      t.string :provider, :default => '(none)'
      t.string :author, :default => '(none)'

      t.timestamps null: false
    end
  end
end
