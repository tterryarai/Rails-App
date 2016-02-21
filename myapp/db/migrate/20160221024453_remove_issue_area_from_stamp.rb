class RemoveIssueAreaFromStamp < ActiveRecord::Migration
  def change
    remove_column :stamps, :issue_area
  end
end
