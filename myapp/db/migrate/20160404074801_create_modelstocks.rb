class CreateModelstocks < ActiveRecord::Migration
  def change
    create_table :modelstocks do |t|
      t.string :name, :null => false
      t.text :description
      t.string :scale, :default => '(none)'
      t.string :status, :null => false
      t.string :group1, :default => '(none)'
      t.string :group2, :default => '(none)'
      t.string :provider, :default => '(none)'

      t.timestamps null: false
    end
  end
end
