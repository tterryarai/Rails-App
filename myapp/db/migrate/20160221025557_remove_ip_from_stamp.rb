class RemoveIpFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :issue_price
  end
end
